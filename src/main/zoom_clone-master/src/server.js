import express from "express";
// import WebSocket from "ws";
import SocketIO from "socket.io";
import http from "http";

const PORT = process.env.PORT || 4000;  //포트번호 지정

const app = express();  // NodeJS를 사용하여 쉽게 서버를 구성할 수 있게 만든 클래스와 라이브러리의 집합체

app.set("view engine", "pug");  // view를 pug를 사용하겠다는 뜻
app.set("views", process.cwd() + "/src/views"); // views 설정 // process.cwd()는 node명령을 호출한 작업디렉터리의 절대경로이다
app.use("/public", express.static(process.cwd() + "/src/public"));
//유저가 /public으로 가게 되면 process.cwd() + "/src/public"폴더를 보여주게 함  // public url을 생성해서 유저에게 파일을 공유

app.get("/", (req, res) => {
  res.render("home");
});
// // home 으로 가면 request, response 를 받고 home을 res.render 렌더함 

app.get("/*", (req, res) => {
  res.redirect("/");
});
// url 포트 뒤에 어떤 것을 입력해도 home으로 이동

const httpServer = http.createServer(app);  //ws를 쓰기위해 express로부터 http서버를 생성
const wsServer = SocketIO(httpServer);		//socket io 서버 생성

let roomObjArr = [
  // {
  //   roomName,
  //   currentNum,
  //   users: [
  //     {
  //       socketId,
  //       nickname,
  //     },
  //   ],
  // },
];
const MAXIMUM = 5;  // 최대 수

wsServer.on("connection", (socket) => {
  let myRoomName = null;	// 변수 선언
  let myNickname = null;

  socket.on("join_room", (roomName, nickname) => {
    myRoomName = roomName;		// app에서 받아 오는 값
    myNickname = nickname;

    let isRoomExist = false;
    let targetRoomObj = null;

	// emit => 서버가 현재 접속해있는 모든 클라이언트에게 이벤트 전달
    // forEach를 사용하지 않는 이유: callback함수를 사용하기 때문에 return이 효용없음.
    for (let i = 0; i < roomObjArr.length; ++i) {		//  roomName, currentNum등 리스트 갯수 반복
      if (roomObjArr[i].roomName === roomName) {		// i변째 방이름이 방이름 과 같을떄
        // Reject join the room
        if (roomObjArr[i].currentNum >= MAXIMUM) {		// 그방의 인원수가 최대 인원수 보다 크거나 같을때
          socket.emit("reject_join");					// 입장이 불가능 하다고 안내
          return;										// 종료
        }
														// 인원수가 작을경우
        isRoomExist = true;								
        targetRoomObj = roomObjArr[i];					// targetRoomObj 변수에 현제 i번째 방의 리스트를 담음
        break;											// 멈춤
      }
    }

    // Create room
    if (!isRoomExist) {									//   true 일경우
      targetRoomObj = {									// 	 targetRoomObj 변수에 값을 입력
        roomName,
        currentNum: 0,
        users: [],
      };
      roomObjArr.push(targetRoomObj);					//   roomObjArr에 targetRoomObj 변수의 값을 담음
    }

    //Join the room
    targetRoomObj.users.push({							// targetRoomObj 의 users에 socketId, nickname을 담음
      socketId: socket.id,
      nickname,
    });
    ++targetRoomObj.currentNum;							// targetRoomObj.currentNum 갯수를 증가

    socket.join(roomName);								//  join => 참여  // roomName 방에 참여
    socket.emit("accept_join", targetRoomObj.users);	//  accept_join => app.js 이벤트의 이름  //   targetRoomObj.users 정보를 서버가 다른 클라이언트들에게 보여줌
  });

  socket.on("offer", (offer, remoteSocketId, localNickname) => {   // remoteSocketId -> 다른 사용자 ip, offer => 제안 
    socket.to(remoteSocketId).emit("offer", offer, socket.id, localNickname);
  });

  socket.on("answer", (answer, remoteSocketId) => {					// answer => 응답 // 다른 사용자 정보
    socket.to(remoteSocketId).emit("answer", answer, socket.id);		// 
  });

  socket.on("ice", (ice, remoteSocketId) => {						// ice => 사용자간의 연결
    socket.to(remoteSocketId).emit("ice", ice, socket.id); 			
  });

  socket.on("chat", (message, roomName) => {						// 메세지 입력시 방의 모든 사용자가 볼수있게 
    socket.to(roomName).emit("chat", message);
  });

  socket.on("disconnecting", () => {								
    socket.to(myRoomName).emit("leave_room", socket.id, myNickname);		// 사용자가 나갈경우 해당 사용자가 방을 나갔다는것을 채팅창에- 알려줌 // app.js

    let isRoomEmpty = false;
    for (let i = 0; i < roomObjArr.length; ++i) {		
      if (roomObjArr[i].roomName === myRoomName) {
        const newUsers = roomObjArr[i].users.filter(		// 나를 제외한 다른 사람들의 소켓아이디		
          (user) => user.socketId != socket.id			// 룸안에 있는 소켓아이디 같지 않을때?
        );
        roomObjArr[i].users = newUsers;		 // 그방에 users값을 나를 제외한 다른사람들의 소켓아이티로 바꿈				
        --roomObjArr[i].currentNum;				// 방 인원수 -1

        if (roomObjArr[i].currentNum == 0) {			// 방의 인원수가 0명이 됬을때
          isRoomEmpty = true;							// true로 변환
        }
      }
    }

    // Delete room
    if (isRoomEmpty) {									// 방의 인원수가 0명일때
      const newRoomObjArr = roomObjArr.filter(
        (roomObj) => roomObj.currentNum != 0			// 인원수가 0명이 아닐때
      );
      roomObjArr = newRoomObjArr;						// 인원수가 방을 다시 생성해 방 리스트에 넣는다.
    }
  });
});

const handleListen = () =>
  console.log(`✅ Listening on http://localhost:${PORT}`);
httpServer.listen(PORT, handleListen); //브라우저와 연결된 소켓
