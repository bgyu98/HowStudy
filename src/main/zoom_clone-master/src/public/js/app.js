// WebPack을 사용하지 않고 단순히 JavaScript를 User에게 전송할 것 

const socket = io();

// querySelector() 함수는 선택자에 부합하는 요소 중에서 첫 번째 요소만을 반환
const myFace = document.querySelector("#myFace");
const muteBtn = document.querySelector("#mute");
const muteIcon = muteBtn.querySelector(".muteIcon");
const unMuteIcon = muteBtn.querySelector(".unMuteIcon");
const cameraBtn = document.querySelector("#camera");
const cameraIcon = cameraBtn.querySelector(".cameraIcon");
const unCameraIcon = cameraBtn.querySelector(".unCameraIcon");
const camerasSelect = document.querySelector("#cameras");

const call = document.querySelector("#call");
const welcome = document.querySelector("#welcome");

const HIDDEN_CN = "hidden";

let myStream;
let muted = true;
unMuteIcon.classList.add(HIDDEN_CN);			// 음소거 아이콘에 히든값을 부여
let cameraOff = false;
unCameraIcon.classList.add(HIDDEN_CN);
let roomName = "";				// 내가 들어간 방이름
let nickname = "";				// 내 닉네임
let peopleInRoom = 1;			

let pcObj = {
  // remoteSocketId: pc			// 피얼커넥션? 
};

// 카메라가 존재할경우 화면에 카메라 붙여주고 카메라가 없는경우 err띄움
async function getCameras() {
  try {
    const devices = await navigator.mediaDevices.enumerateDevices();  // await연산자는 Promise를 기다리기 위해 사용 //유저의 미디어 인풋 사용을 허가받아 오디오나 비디오와 같은 미디어스트림을 (웹에서 사용가능한 형태로) 돌려주는 메소드
    																		//사용자 PC의 연결되어있는 미디어 디바이스 정보를 가져오게 됩니다.
    const cameras = devices.filter((device) => device.kind === "videoinput"); //가져온 정보는 devices객체에 저장되어있고, filter조건을 이용하여 'videotype(카메라 정보)', 'audiotype(마이크 정보)'를 가져온다.
    const currentCamera = myStream.getVideoTracks();
    //스트림에 포함된 각 비디오 트랙에 대해 하나씩 MediaStreamTrack 개체의 배열, 비디오 트랙은 종류 속성이 비디오인 트랙입니다. 스트림에 비디오 트랙이 없으면 배열이 비어 있습니다.
    cameras.forEach((camera) => {
      const option = document.createElement("option");
      option.value = camera.deviceId;					// 카메라 정보
      option.innerText = camera.label;					// 옵션에 카메라 정보를 입력

      if (currentCamera.label == camera.label) {			// 카메라 정보가 같을때
        option.selected = true;								// 옵션의 셀렉트드가 활성화 된다.
      }

      camerasSelect.appendChild(option);					// 카메라 선택옵션 셀렉트박스에 내카메라 옵션값 붙이기
    });
  } catch (error) {
    console.log(error);
  }
}

async function getMedia(deviceId) {			
  const initialConstraints = {
    audio: true,
    video: { facingMode: "user" },			// 사용자를 비추는 전면 카메라
  };
  const cameraConstraints = {
    audio: true,
    video: { deviceId: { exact: deviceId } },  // 디바이스가 정확한 정보
  };

  try {
    myStream = await navigator.mediaDevices.getUserMedia(
      deviceId ? cameraConstraints : initialConstraints
    );

    // stream을 mute하는 것이 아니라 HTML video element를 mute한다.
    myFace.srcObject = myStream;
    myFace.muted = true;

    if (!deviceId) {
      // mute default
      myStream //
        .getAudioTracks()
        .forEach((track) => (track.enabled = false));

      await getCameras();
    }
  } catch (error) {
    console.log(error);
  }
}

// 음소거 버튼 클릭 이벤트
function handleMuteClick() {
  myStream //
    .getAudioTracks()
    .forEach((track) => (track.enabled = !track.enabled));
  if (muted) {
    unMuteIcon.classList.remove(HIDDEN_CN);				// 기존 마이크 삭제
    muteIcon.classList.add(HIDDEN_CN);					// 뮤트등록
    muted = false;
  } else {
    muteIcon.classList.remove(HIDDEN_CN);				// 뮤트해제
    unMuteIcon.classList.add(HIDDEN_CN);				// 마이크 등록
    muted = true;
  }
}

// 카메라 머튼 클릭 이벤트
function handleCameraClick() {
  myStream //
    .getVideoTracks()
    .forEach((track) => (track.enabled = !track.enabled));
  if (cameraOff) {
    cameraIcon.classList.remove(HIDDEN_CN);
    unCameraIcon.classList.add(HIDDEN_CN);
    cameraOff = false;
  } else {
    unCameraIcon.classList.remove(HIDDEN_CN);
    cameraIcon.classList.add(HIDDEN_CN);
    cameraOff = true;
  }
}

// 카메라 변경 이벤트
async function handleCameraChange() {
  try {
    await getMedia(camerasSelect.value);
    if (peerConnectionObjArr.length > 0) {
      const newVideoTrack = myStream.getVideoTracks()[0];
      peerConnectionObjArr.forEach((peerConnectionObj) => {
        const peerConnection = peerConnectionObj.connection;
        const peerVideoSender = peerConnection
          .getSenders()
          .find((sender) => sender.track.kind == "video");
        peerVideoSender.replaceTrack(newVideoTrack);
      });
    }
  } catch (error) {
    console.log(error);
  }
}



// 버튼 클릭
muteBtn.addEventListener("click", handleMuteClick);
cameraBtn.addEventListener("click", handleCameraClick);
camerasSelect.addEventListener("input", handleCameraChange);

/////////////////////////////////// prototype
// Screen Sharing

let captureStream = null;

async function startCapture() {
  try {
    captureStream = await navigator.mediaDevices.getDisplayMedia({
      video: true,
      audio: true,
    });

    const screenVideo = document.querySelector("#screen");		// html  #screen 값에
    screenVideo.srcObject = captureStream;						// 카메라 붙이기
  } catch (error) {
    console.error(error);
  }
}

// Welcome Form (choose room)

call.classList.add(HIDDEN_CN);						
// welcome.hidden = true;

const welcomeForm = welcome.querySelector("form");

async function initCall() {
  welcome.hidden = true;					// 방제목, 닉네임 입력창 
  call.classList.remove(HIDDEN_CN);			// 삭제
  await getMedia();							// 카메라, 채팅방 화면 생성
}



// 방이름, 닉네임 입력후 확인 버튼 클릭시 서브밋
async function handleWelcomeSubmit(event) {
  event.preventDefault();

  if (socket.disconnected) {
    socket.connect();
  }

  const welcomeRoomName = welcomeForm.querySelector("#roomName");
  const welcomeNickname = welcomeForm.querySelector("#nickname");
  const nicknameContainer = document.querySelector("#userNickname");		
  roomName = name;		// 방이름 가져옴
  welcomeRoomName.value = "";			// input 빈값으로 만듬
  nickname = welcomeNickname.value;
  welcomeNickname.value = "";
  nicknameContainer.innerText = nickname;		// nicknameContainer element 안의 text 값을 닉네임으로 변경
  socket.emit("join_room", roomName, nickname);
}

welcomeForm.addEventListener("submit", handleWelcomeSubmit);

// Chat Form

const chatForm = document.querySelector("#chatForm");
const chatBox = document.querySelector("#chatBox");

const MYCHAT_CN = "myChat";
const NOTICE_CN = "noticeChat";

chatForm.addEventListener("submit", handleChatSubmit);  // 버튼 클릭스 함수를 불러 같이 서브밑

function handleChatSubmit(event) {
  event.preventDefault();
  const chatInput = chatForm.querySelector("input");	//chatForm 의 input 을 불러옴
  const message = chatInput.value;		// 불러온 input value 값을 담음
  chatInput.value = "";					// 빈값으로 변경
  socket.emit("chat", `${nickname}: ${message}`, roomName);		// 모든 클라이언트에게 이밴트를 전달
  writeChat(`본인: ${message}`, MYCHAT_CN);
}

function writeChat(message, className = null) {
  const li = document.createElement("li");		
  const span = document.createElement("span");
  span.innerText = message;			// 입력한 메세지 span값에~~
  li.appendChild(span);				// 특정 부모 노드의 자식 노드 리스트 중 마지막 자식으로 붙인다.
  li.classList.add(className);		
  chatBox.prepend(li);		// prepend => 콘텐트 선택한 요소 내분에 삽입
}

// Leave Room
// 방나가기
const leaveBtn = document.querySelector("#leave");

function leaveRoom() {
  socket.disconnect();

  call.classList.add(HIDDEN_CN);	// class hidden 부여 => 	css -> display: none;
  welcome.hidden = false;			

  peerConnectionObjArr = [];
  peopleInRoom = 1;
  nickname = "";

  myStream.getTracks().forEach((track) => track.stop());
  const nicknameContainer = document.querySelector("#userNickname");
  nicknameContainer.innerText = "";

  myFace.srcObject = null;
  clearAllVideos();			// 비디오끄기
  clearAllChat();			// 채팅 끄기
}

//방 나가면 화상 칸 날리는 함수 (다른 사람이 나갔을 때)
function removeVideo(leavedSocketId) {
  const streams = document.querySelector("#streams");
  const streamArr = streams.querySelectorAll("div");
  streamArr.forEach((streamElement) => {
    if (streamElement.id === leavedSocketId) {
      streams.removeChild(streamElement);
    }
  });
}

// 모든 화상 칸 날리는 함수 (본인이 볼 때)
function clearAllVideos() {
  const streams = document.querySelector("#streams");
  const streamArr = streams.querySelectorAll("div");
  streamArr.forEach((streamElement) => {
    if (streamElement.id != "myStream") {
      streams.removeChild(streamElement);
    }
  });
}

// 모든 채팅 기록 삭제(내가 나갔을 때)
function clearAllChat() {
  const chatArr = chatBox.querySelectorAll("li");
  chatArr.forEach((chat) => chatBox.removeChild(chat));
}

leaveBtn.addEventListener("click", leaveRoom); //나가기버튼

// Modal code

const modal = document.querySelector(".modal"); //모달 띄우는거
const modalText = modal.querySelector(".modal__text");
const modalBtn = modal.querySelector(".modal__btn");

function paintModal(text) {
  modalText.innerText = text;
  modal.classList.remove(HIDDEN_CN);

  modal.addEventListener("click", removeModal);
  modalBtn.addEventListener("click", removeModal);
  document.addEventListener("keydown", handleKeydown);
}

//모달 치우기 // display:none
function removeModal() {
  modal.classList.add(HIDDEN_CN);
  modalText.innerText = "";
}

// 엔터를 누르거나 ok버튼을 누르면 닫기
function handleKeydown(event) {
  if (event.code === "Escape" || event.code === "Enter") {
    removeModal();
  }
}

// Socket code

socket.on("reject_join", () => {  //들어가려고 하는데
  // Paint modal
  paintModal("Sorry, The room is already full."); //꽉차면 띄우는 모달

  // Erase names
  const nicknameContainer = document.querySelector("#userNickname");
  nicknameContainer.innerText = "";
  roomName = "";
  nickname = "";
});

socket.on("accept_join", async (userObjArr) => {  // async => socket의 비동기 메소드 (ajax랑 비슷하다고 보자!)
  await initCall();

  const length = userObjArr.length;
  if (length === 1) {
    return;
  }

  writeChat("알림!", NOTICE_CN); //채팅창에 있는 사람들에게 띄울 알림 채팅
  for (let i = 0; i < length - 1; ++i) {
    try {
      const newPC = createConnection(
        userObjArr[i].socketId,				// 아이피 이하동일
        userObjArr[i].nickname				// 방에 있는 사람들 닉네임을 배열에 저장
      );
      const offer = await newPC.createOffer();
      await newPC.setLocalDescription(offer);
      socket.emit("offer", offer, userObjArr[i].socketId, nickname);
      writeChat(`__${userObjArr[i].nickname}__`, NOTICE_CN);
    } catch (err) {
      console.error(err);
    }
  }
  writeChat("방에 있던 사람들", NOTICE_CN); //새로운 접속자에게 보여줄 채팅
});

socket.on("offer", async (offer, remoteSocketId, remoteNickname) => {
  try {
    const newPC = createConnection(remoteSocketId, remoteNickname);
    await newPC.setRemoteDescription(offer);
    const answer = await newPC.createAnswer();
    await newPC.setLocalDescription(answer);
    socket.emit("answer", answer, remoteSocketId);
    writeChat(` ${remoteNickname} 님이 방에 입장하셨습니다.`, NOTICE_CN);
  } catch (err) {
    console.error(err);
  }
});

socket.on("answer", async (answer, remoteSocketId) => {
  await pcObj[remoteSocketId].setRemoteDescription(answer);  //나갈때
});

socket.on("ice", async (ice, remoteSocketId) => {
  await pcObj[remoteSocketId].addIceCandidate(ice);  		//연결중 handshake
});

socket.on("chat", (message) => {			//채팅서버
  writeChat(message);
});

socket.on("leave_room", (leavedSocketId, nickname) => {
  removeVideo(leavedSocketId);
  writeChat(`${nickname} 님이 방에서 나가셨습니다.`, NOTICE_CN);		//방 나갈때 남아있는 사용자에게 표시할 채팅
  --peopleInRoom;	// 인원수 빼기
  sortStreams();	//스트림 종료
});

// RTC code

function createConnection(remoteSocketId, remoteNickname) {		//rtc 구문 시작
  const myPeerConnection = new RTCPeerConnection({		//rtc 객체 생성
    iceServers: [
      {
        urls: [		//구글 webRTC 서버 연동
          "stun:stun.l.google.com:19302",
          "stun:stun1.l.google.com:19302",
          "stun:stun2.l.google.com:19302",
          "stun:stun3.l.google.com:19302",
          "stun:stun4.l.google.com:19302",
        ],
      },
    ],
  });
  myPeerConnection.addEventListener("icecandidate", (event) => {
    handleIce(event, remoteSocketId);		//연결대기
  });
  myPeerConnection.addEventListener("addstream", (event) => {
    handleAddStream(event, remoteSocketId, remoteNickname);		//스트리밍에 추가
  });
  // myPeerConnection.addEventListener(
  //   "iceconnectionstatechange",
  //   handleConnectionStateChange
  // );
  myStream //
    .getTracks()
    .forEach((track) => myPeerConnection.addTrack(track, myStream));  //트랙에 올림

  pcObj[remoteSocketId] = myPeerConnection;		//자기 피어를 소켓아이디 지우는 배열에 추가

  ++peopleInRoom;		//인원수 추가
  sortStreams();
  return myPeerConnection;
}

function handleIce(event, remoteSocketId) {		//연결대기
  if (event.candidate) {
    socket.emit("ice", event.candidate, remoteSocketId);
  }
}

function handleAddStream(event, remoteSocketId, remoteNickname) {		//추가
  const peerStream = event.stream;
  paintPeerFace(peerStream, remoteSocketId, remoteNickname);
}

function paintPeerFace(peerStream, id, remoteNickname) {		//화상채팅 연결 성공 후 화상 위치 및 사이즈 조정 
  const streams = document.querySelector("#streams");
  const div = document.createElement("div");
  div.id = id;
  const video = document.createElement("video");
  video.autoplay = true;
  video.playsInline = true;
  video.width = "400";
  video.height = "400";
  video.srcObject = peerStream;
  const nicknameContainer = document.createElement("h3");
  nicknameContainer.id = "userNickname";
  nicknameContainer.innerText = remoteNickname;

  div.appendChild(video);
  div.appendChild(nicknameContainer);
  streams.appendChild(div);
  sortStreams();
}

function sortStreams() {
  const streams = document.querySelector("#streams");
  const streamArr = streams.querySelectorAll("div");
  streamArr.forEach((stream) => (stream.className = `people${peopleInRoom}`));
}
/*
function handleConnectionStateChange(event) {
  console.log(`${pcObjArr.length - 1} CS: ${event.target.connectionState}`);
  console.log(`${pcObjArr.length - 1} ICS: ${event.target.iceConnectionState}`);

  if (event.target.iceConnectionState === "disconnected") {
  }
}
*/
