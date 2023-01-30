package com.example.demo.controller;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.MyStudyService;
import com.example.demo.vo.MyStudyVO;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/mypage")
public class MyStudyController {

   @Autowired
   private MyStudyService mystudyservice;

   @RequestMapping("/{step}")
   public String viewPage(@PathVariable String step) {
      return "mypage/" + step;
   }
   

   
   
   
   /*
     해당 구문 호출 시, 즐겨찾기 관련 ajax 실행, 즐겨찾기 추가  / 삭제 체크
    */
   @RequestMapping("/heartcheck")
   @ResponseBody
   public String heartcheck (MyStudyVO vo,Model m, HttpSession session) {
      System.out.println("즐겨찾기 ajax 실행 : ");
      System.out.println("체크번호 : " + vo.check);
      // 로그인한 아이디 가져옴
      String loginId = (String) session.getAttribute("loginId");
      System.out.println("로그인 아이디 : " + loginId);
      vo.setmId(loginId);
      
      // 방 생성자
      System.out.println("즐겨찾기누른사람 : " + vo.mId);
      

      if (vo.check ==1) { // 기존의 즐겨찾기 db에 값이 있는데 클릭했다는 뜻 이므로 db에서 삭제
         deletefavor(vo);
      }
      if( vo.check ==2) { // 기존의 즐겨찾기 db에 값이 없는데 클릭했다는 뜻 이므로 db에 추가
         insertfavor(vo);
      }
      int ch = 0;
      if(mystudyservice.checkheart(vo.getsNum()) == null) {  // 해당 방을 즐겨찾기 한 사람이 아무도 없는 경우
       ch = 0;						// 0 으로 표현
      }else if (mystudyservice.checkheart(vo.getsNum()) != null) { 	// 해당 방을 즐겨찾기 한 사람이 있는 경우
         ch = mystudyservice.checkheart(vo.getsNum()); // 해당 수 출력
      }
      
      

      Gson gson = new Gson();
      JsonObject object = new JsonObject();
      object.addProperty("sFavorNum",String.valueOf(ch));
      String json = gson.toJson(object);
      System.out.println("걸려진 ch값 : " + json);
      return json;
   }


	/*
	  제일 처음 마이페이지 누르면, 즐겨찾기 된 페이지와 (상단부) 방문 했던 페이지 ( 하단부 ) 출력
	 * */
	@RequestMapping("/mystudyroom")
	public void myStudyRoom(MyStudyVO vo , Model m, HttpSession session) throws Exception{
		System.out.println("mypage 요청");
		/* 로그인 한 아이디의 세션 값 받기*/
		//HttpSession session = request.getSession();
		String loginId = (String) session.getAttribute("loginId");
		System.out.println("로그인 아이디 : " + loginId);
		vo.setmId(loginId);
		
		List<Integer> cr = checkroom(loginId); // 아이디에 따른 즐겨찾기 한 방번호 호출
		// System.out.println("아이디에 따른 방 번호 개수 :"  + cr.size());
		Integer [] temp = new Integer[cr.size()];
		for(int i =0; i<cr.size(); i++ ) {
			 System.out.println("cr : " + cr.get(i));
			 System.out.println("방 번호별 좋아요 수 : " + mystudyservice.checkheart(cr.get(i)));
			 if(mystudyservice.checkheart(cr.get(i)) != null){
				 temp[i] = mystudyservice.checkheart(cr.get(i)); 
			 }
			 else {
				 temp[i] = 0;
			 }
		}


      // 아이디에 따른 해당 값들 호출
      List<HashMap> result = mystudyservice.favorRoom(vo);
      // System.out.println("해당 쿼리문 개수 : " + result.size());
      /* 즐겨찾기 값들 저장 후 모델에 붙이기 */
      Iterator<HashMap> it = result.iterator();
      int j =0;
      while(it.hasNext()) {
         HashMap mvsv = it.next();
         mvsv.put("sFavorNum", temp[j]); // 각각의 값에 해당하는 즐겨찾기 수 추가
         System.out.println(mvsv);
         j++;
      }

      m.addAttribute("favorRoom",result);
      System.out.println("==============================================================");
      
      
      
      
      // 최근 방문한 방들 출력
      System.out.println("최근 방문한 방들 출력");
      List<HashMap> result2 = mystudyservice.checkdate(vo);
      
      
      List<MyStudyVO> rR = rogRoom(vo); // 아이디에 따른 최근 방문한 방번호 호출
      //System.out.println("rR 호출 : " + rR);
      // System.out.println("아이디에 따른 방 번호 개수 :"  + cr.size());

      
      // 방 번호별 좋아요 눌렀었는지 체크
      Integer [] temp3 = new Integer[rR.size()];
      for(int i =0; i<rR.size(); i++ ) {
          System.out.println("rR : " + rR.get(i).getsNum());
          vo.setsNum(rR.get(i).getsNum());
            System.out.println("vo : " +vo);
         
          
          if(mystudyservice.checkRoomHeart(vo) == null) { // 로그인id , 방 번호 입력해서 즐겨찾기 했는지 체크
             temp3[i] = 0;      //  즐겨찾기 누르지 않았음
          }
          else if(mystudyservice.checkRoomHeart(vo) != null){
               temp3[i] = 1;      // 즐겨찾기 눌렀음
            }
         // System.out.println("방 번호별 좋아요 수 : " + mystudyservice.checkheart(rR.get(i)));
          System.out.println("방 번호별 좋아요 클릭 여부 : " + temp3[i]);
      }
      
   
      
      
      /* 방문한 값들 저장 후 모델에 붙이기 */
      Iterator<HashMap> it2 = result2.iterator();
      
      int k =0;
      while(it2.hasNext()) {
         HashMap mvsv = it2.next();
         String sFavorNum =String.valueOf(mvsv.get("sNum"));
         Integer sFn = Integer.valueOf(sFavorNum);
         
         System.out.println("mvsv : " + mvsv);
         if(mystudyservice.checkheart(sFn) ==null) {
            mvsv.put("sFavorNum", 0); // 방 번호에 따른 즐겨찾기 수 없으면 0 넣음
         }else {
            mvsv.put("sFavorNum", mystudyservice.checkheart(sFn)); // 방 번호에 따른 즐겨찾기 수 추가
         }
         vo.setsNum(sFn);
          if(mystudyservice.checkRoomHeart(vo) == null) { // 로그인id , 방 번호 입력해서 즐겨찾기 했는지 체크
             mvsv.put("checkFavor", 0); // 방 번호에 따른 즐겨찾기 여부 확인
          }else {
             mvsv.put("checkFavor", 1);
          }
         //System.out.println(" 방문 내역 " + mvsv);
         System.out.println("방 번호 : " + mvsv.get("sNum"));
         k++;
      }
      
      
      m.addAttribute("resentRoom",result2);
      System.out.println(result2);

      System.out.println("mypage 이동");
      

   }


   /*
    * 날짜 선택시 해당 값 출력해주는 쿼리문 ( ajax ) 
    * 
    */
   @RequestMapping("/checkdate")
   @ResponseBody
   public String checkdate(MyStudyVO vo,Model m, HttpSession session)throws Exception {

      System.out.println("기간 선택했음");
      System.out.println(vo.checkDate); // 선택한 날짜 ( 1 or  7 or 30 )
      /* 로그인 한 아이디의 세션 값 받기*/
      //HttpSession session = request.getSession();
      String loginId = (String) session.getAttribute("loginId");
      System.out.println("로그인 아이디 : " + loginId);
      vo.setmId(loginId); // mid에 로그인한 값 넣기
      
      List<HashMap> checkdate = mystudyservice.checkdate(vo);
      List<MyStudyVO> rR = rogRoom(vo); // 아이디에 따른 방문한 방번호 호출
      //  방 번호 별 좋아요 수 체크
      Integer [] temp = new Integer[rR.size()];
      for(int i =0; i<rR.size(); i++ ) {
      //    System.out.println("rR : " + rR.get(i));      방 번호별 좋아요 수    
          if(mystudyservice.checkheart(rR.get(i).getsNum())== null) { // 좋아요 수 없으면 0 저장
             temp[i] = 0;
          }else {
            temp[i] = mystudyservice.checkheart(rR.get(i).getsNum()); // 좋아요 수 있으면 해당 값 저장
          }
          
      }
      
      // 방 번호별 좋아요 눌렀었는지 체크
      Integer [] temp2 = new Integer[rR.size()];
      for(int i =0; i<rR.size(); i++) {
         System.out.println(" 좋아요 눌렀는지 체크 ");
         vo.setsNum(rR.get(i).getsNum());
         
         // System.out.println("아이디 별 방 번호 : " + rR.get(i));
         Integer crh = mystudyservice.checkRoomHeart(vo); // 로그인id , 방 번호 입력해서 즐겨찾기 했는지 체크
         if ( crh == null) {
            temp2[i] = 0;      //  즐겨찾기 누르지 않았음
         }else {
            temp2[i] = 1;      // 즐겨찾기 눌렀음
         }
         
         System.out.println("즐겨찾기 누른 여부 : " + temp2[i]);
         
      }
      
      
      System.out.println("템프 길이 : " + temp.length);
      
      
      

      
      Gson gson = new Gson();
      JsonArray jArray = new JsonArray();
      Iterator<HashMap> it = checkdate.iterator();
      int i =0;
      while(it.hasNext()) {
         HashMap msVO = it.next();
         JsonObject object = new JsonObject();
         SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
         System.out.println(msVO.get("sNum").toString());
         
         
         String str = format.format(msVO.get("sDate"));
         
         object.addProperty("sNum",       String.valueOf(msVO.get("sNum")));
         object.addProperty("sTitle",    String.valueOf(msVO.get("sTitle")));
         object.addProperty("sPeopleNum", String.valueOf(msVO.get("sPeopleNum")));
         object.addProperty("sPw",       String.valueOf(msVO.get("sPw")));
         object.addProperty("sDate",    str);
         object.addProperty("sCategory", String.valueOf(msVO.get("sCategory")));
         object.addProperty("mId",       String.valueOf(msVO.get("mId")));
         object.addProperty("sFile", String.valueOf(msVO.get("sFile")));
         object.addProperty("sFavorNum",temp[i] );
         object.addProperty("checkFavor", temp2[i]);
   
         i++;
         
         jArray.add(object);
      }
      String json2 = gson.toJson(jArray);


      System.out.println(json2);  // 문자열화 된 json


      return json2;
   }



   /*
       해당 구문 호출 시, 즐겨찾기 테이블에 해당 방번호와 아이디 추가 
    */
   public void insertfavor(MyStudyVO vo) {
      System.out.println("insertfavor 호출");
      mystudyservice.insertfavor(vo);   
   }
   /*
       해당 구문 호출 시, 즐겨찾기 테이블에 해당 방번호와 아이디 삭제 
    */
   public void deletefavor(MyStudyVO vo) {
      System.out.println("deletefavor 호출");
      mystudyservice.deletefavor(vo);   
   }

   /*
      해당 구문 호출시 방 번호별 즐겨찾기 개수 호출 
    */
   public Integer checkheart(Integer sNum) {
      int ch = mystudyservice.checkheart(sNum);
      return ch;
   }
   /*
   해당 구문 호출시 아이디 별 즐겨찾기한 방 번호들 호출 
    */
   public List<Integer> checkroom(String mId) {
      List<Integer> ch = mystudyservice.checkroom(mId);
      return ch;
   }
   
   /*
     해당 구문 호출 시 아이디 별 방문한 방 번호들 호출
    */
   public List<MyStudyVO> rogRoom(MyStudyVO vo) {
      List<MyStudyVO> rR = mystudyservice.rogRoom(vo);
      return rR;
   }
   
   /*
    해당 구문 호출 시 방 번호별 즐겨찾기 여부 확인
   
    */

   public Integer checkRoomHeart(MyStudyVO vo, HttpSession session) throws Exception{
      String loginId = (String) session.getAttribute("loginId");
      System.out.println("로그인 아이디 : " + loginId);
      vo.setmId(loginId);
      Integer crh = mystudyservice.checkRoomHeart(vo);
      return crh;
   }

}