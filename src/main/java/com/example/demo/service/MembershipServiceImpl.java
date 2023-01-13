package com.example.demo.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.MembershipDAO;
import com.example.demo.vo.MembershipVO;
import com.example.demo.vo.UserVO;

@Service
public class MembershipServiceImpl implements MembershipService {

	@Autowired
	private MembershipDAO membershipDAO;

	// 티켓 구매
	public void buyTicket(MembershipVO vo) {
		membershipDAO.buyTicket(vo);
	}

	// 구매내역 이메일 발송 -----
	// 아이디로 구매내역 조회
	public MembershipVO findById(MembershipVO mvo) {
		return membershipDAO.findById(mvo);
	}

	// 이메일 발송
	public String sendemail(MembershipVO mvo) {

		Properties p = System.getProperties();
		p.put("mail.smtp.starttls.enable", "true"); // gmail은 true 고정
		p.put("mail.smtp.host", "smtp.naver.com"); // smtp 서버 주소
		p.put("mail.smtp.auth", "true"); // gmail은 true 고정
		p.put("mail.smtp.port", "587"); // 네이버 포트

		Authenticator auth = new MyAuthentication();
		// session 생성 및 MimeMessage생성
		Session session = Session.getInstance(p, auth);
		MimeMessage msg = new MimeMessage(session);

		try {
			// 편지보낸시간
			msg.setSentDate(new Date());
			InternetAddress from = new InternetAddress();
			from = new InternetAddress("jaedong222@naver.com"); // 발신자 아이디
			// 이메일 발신자
			msg.setFrom(from);
			// 이메일 수신자
			InternetAddress to = new InternetAddress(mvo.getmEmail());
			msg.setRecipient(Message.RecipientType.TO, to);
			// 이메일 제목
			msg.setSubject("HowStudy 결제내역", "UTF-8");
			// 이메일 내용
			
			
			//
			SimpleDateFormat date = new SimpleDateFormat("yyyy년-MM월-dd일");
			
			
			//
			String message = "안녕하세요 HowStudy 입니다! 결제내역 안내드립니다. <br><br> "
					+ " 구매자 아이디 : " + mvo.getmId() + "<br> <br>" 
			        + " 이용권 이름 : " + mvo.gettClass() + "<br> <br>"
			        + " 이용 기간 : " + date.format(mvo.gettStart()) + "~" + date.format(mvo.gettEnd()) + "<br> <br>"
			        + " 이용권 가격 : " + mvo.getpAmount() + "원 <br> <br>"
			        + " 구매해 주셔서 감사합니다!";
			        
			        
			       
			
			
		

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
		return "success";
	

	}

	class MyAuthentication extends Authenticator {

		PasswordAuthentication pa;

		public MyAuthentication() {

			String id = "jaedong222@naver.com"; // 네이버 이메일 아이디 ( 위에 발신자 이메일 )
			String pw = "ss159357^^"; // 네이버 비밀번호

			// ID와 비밀번호를 입력한다.
			pa = new PasswordAuthentication(id, pw);
		}

		// 시스템에서 사용하는 인증정보
		public PasswordAuthentication getPasswordAuthentication() {
			return pa;
		}

	}

}
