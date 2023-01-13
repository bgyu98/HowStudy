package com.example.demo.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Date;
import java.util.HashMap;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.example.demo.dao.UserDAO;
import com.example.demo.vo.UserVO;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;

	// 회원 가입
	public int insertCustomer(UserVO vo) {
		return userDAO.insertCustomer(vo);
	}

	// 로그인
	public UserVO loginCustomer(UserVO vo) {
		return userDAO.loginCustomer(vo);
	}
	
	// 구매후~~
	public UserVO payCustomer(UserVO vo) {
		return userDAO.payCustomer(vo);
	}

	// 아이디 중복 체크
	public int mIdCheck(String mId) {
		return userDAO.mIdCheck(mId);
	}

	// 회원정보 수정
	public int updateCustomer(UserVO vo) {
		return userDAO.updateCustomer(vo);
	}

	// 회원정보 가져오기
	public UserVO getUserInfo(String mId) {
		return userDAO.getUserInfo(mId);

	}

	// 회원정보 삭제
	public int deleteInfo(UserVO vo) {
		System.out.println("deleteServiceImpl=>" + vo);
		System.out.println("****************비밀번호 확인 페이지 이동 mid : " + vo);
		return userDAO.deleteInfo(vo);
	}

	// 회원 정보 삭제를 위한 비밀번호 체크
	public boolean checkPw(String mId, String mPw) {
		System.out.println("checkPw=>" + mId + mPw);
		return userDAO.checkPw(mId, mPw);
	}

	// 카카오 회원가입, 로그인
	public String getAccessToken(String authorize_code) {
		String access_Token = "";
		String refresh_Token = "";
		String reqURL = "https://kauth.kakao.com/oauth/token";

		try {
			URL url = new URL(reqURL);

			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			// POST 요청을 위해 기본값이 false인 setDoOutput을 true로

			conn.setRequestMethod("POST");
			conn.setDoOutput(true);
			// POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송

			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			StringBuilder sb = new StringBuilder();
			sb.append("grant_type=authorization_code");
			sb.append("&client_id=60fba32f81035c06fdb413a6e0d5bf99"); // 본인이 발급받은 key
			sb.append("&redirect_uri=http://localhost:8888/user/kakaoLogin"); // 본인이 설정한 주소
			sb.append("&code=" + authorize_code);
			bw.write(sb.toString());
			bw.flush();

			// 결과 코드가 200이라면 성공
			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);

			// 요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";

			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);

			// Gson 라이브러리에 포함된 클래스로 JSON파싱 객체 생성
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);

         access_Token = element.getAsJsonObject().get("access_token").getAsString();
         refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();

         System.out.println("access_token : " + access_Token);
         System.out.println("refresh_token : " + refresh_Token);

         br.close();
         bw.close();
      } catch (IOException e) {
         e.printStackTrace();
      }
      return access_Token;
   }

   public UserVO getUserInfoo(String access_Token) {

      // 요청하는 클라이언트마다 가진 정보가 다를 수 있기에 HashMap타입으로 선언
      HashMap<String, Object> userInfo = new HashMap<String, Object>();

      String reqURL = "https://kapi.kakao.com/v2/user/me";

      try {
         URL url = new URL(reqURL);
         HttpURLConnection conn = (HttpURLConnection) url.openConnection();
         conn.setRequestMethod("GET");

         // 요청에 필요한 Header에 포함될 내용
         conn.setRequestProperty("Authorization", "Bearer " + access_Token);

         int responseCode = conn.getResponseCode();
         System.out.println("responseCode : " + responseCode);
         
         BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
         
         String line = "";
         String result = "";
         
         while ((line = br.readLine()) != null) {
            result += line;
         }
         System.out.println("response body : " + result);
         
         JsonParser parser = new JsonParser();
         JsonElement element = parser.parse(result);
         
         JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
         JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();
         
         String nickname = properties.getAsJsonObject().get("nickname").getAsString();
         String email = kakao_account.getAsJsonObject().get("email").getAsString();
         
         userInfo.put("nickname", nickname);
         userInfo.put("email", email);
         
      } catch (IOException e) {
         e.printStackTrace();
      }
      // catch 아래 코드 추가.
      
      UserVO result = userDAO.findkakao(userInfo);
      // 위 코드는 먼저 정보가 저장되있는지 확인하는 코드.
      System.out.println("S:" + result);
      if (result == null) {
         // result가 null이면 정보가 저장이 안되있는거므로 정보를 저장.
         userDAO.kakaoinsert(userInfo);
         // 위 코드가 정보를 저장하기 위해 Repository로 보내는 코드임.
         return userDAO.findkakao(userInfo);
         // 위 코드는 정보 저장 후 컨트롤러에 정보를 보내는 코드임.
         // result를 리턴으로 보내면 null이 리턴되므로 위 코드를 사용.
      } else {
         return result;
      }

   }
   
   
   
   //-----비번
   
   //아이디로 회원정보 찾기
   public UserVO findById(UserVO vo) {
      return userDAO.findById(vo);
   }

   //임시 비밀번호 발송
   public Integer tempPw(UserVO vo) {
      String password = null;
      Properties p = System.getProperties();
      p.put("mail.smtp.starttls.enable", "true"); // gmail은 true 고정
      p.put("mail.smtp.host", "smtp.naver.com"); // smtp 서버 주소
      p.put("mail.smtp.auth", "true"); // gmail은 true 고정
      p.put("mail.smtp.port", "587"); // 네이버 포트

      Authenticator auth = new MyAuthentication();
      // session 생성 및 MimeMessage생성
      Session session = Session.getDefaultInstance(p, auth);
      MimeMessage msg = new MimeMessage(session);

      try {
         // 편지보낸시간
         msg.setSentDate(new Date());
         InternetAddress from = new InternetAddress();
         from = new InternetAddress("jaedong222@naver.com"); // 발신자 아이디
         // 이메일 발신자
         msg.setFrom(from);
         // 이메일 수신자
         InternetAddress to = new InternetAddress(vo.getmEmail());
         msg.setRecipient(Message.RecipientType.TO, to);
         // 이메일 제목
         msg.setSubject("HowStudy 임시비밀번호", "UTF-8");
         // 이메일 내용
         String message = "안녕하세요 HowStudy 입니다! 비밀번호는 아래와 같이 변경되었습니다. <br><br> ";
         password = getTempPassword();
         message += password;

         msg.setText(message, "UTF-8");
         // 이메일 헤더
         msg.setHeader("content-Type", "text/html");
         // 메일보내기
         javax.mail.Transport.send(msg, msg.getAllRecipients());

      } catch (AddressException addr_e) {
         addr_e.printStackTrace();
      } catch (MessagingException msg_e) {
         msg_e.printStackTrace();
      } catch (Exception msg_e) {
         msg_e.printStackTrace();
      }

      vo.setmPw(password);
      System.out.println(">>>>>>>>>>>>" + vo);
      return userDAO.updateTempPw(vo);
   }

   public String getTempPassword() {
      char[] charSet = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F',
            'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };

      String str = "";

      // 문자 배열 길이의 값을 랜덤으로 10개를 뽑아 구문을 작성함
      int idx = 0;
      for (int i = 0; i < 10; i++) {
         idx = (int) (charSet.length * Math.random());
         str += charSet[idx];
      }
      return str;
      
   }
   
   //전화번호와 이름으로 아이디 찾기
      public UserVO findbytelandname(UserVO vo) {
         return userDAO.findbytelandname(vo);
      }

	@Override
	public List<UserVO> manageUserList(UserVO uservo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserVO getUserInfoAdmin(String mId) {
		// TODO Auto-generated method stub
		return null;
	}
}

   class MyAuthentication extends Authenticator {

      PasswordAuthentication pa;
      public MyAuthentication(){

         String id = "jaedong222@naver.com";       //네이버 이메일 아이디 ( 위에 발신자 이메일 )
         String pw = "ss369369";        //네이버 비밀번호

         // ID와 비밀번호를 입력한다.
         pa = new PasswordAuthentication(id, pw);
      }

      // 시스템에서 사용하는 인증정보
      public PasswordAuthentication getPasswordAuthentication() {
         return pa;
      }
   
   

   }
