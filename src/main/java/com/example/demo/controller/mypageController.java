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

@Controller
@RequestMapping("/mypage")
public class MypageController {

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
	public String heartcheck (MyStudyVO vo,Model m) {
		System.out.println("즐겨찾기 ajax 실행 : ");
		System.out.println("체크번호 : " + vo.check);
		// 로그인한 아이디 가져옴
		System.out.println("방 번호 : " +vo.sNum);
		
		// 방 생성자
		System.out.println("즐겨찾기누른사람 : " + vo.mId);
		

		if (vo.check ==1) { // 기존의 즐겨찾기 db에 값이 있는데 클릭했다는 뜻 이므로 db에서 삭제
			deletefavor(vo);
		}
		if( vo.check ==2) { // 기존의 즐겨찾기 db에 값이 없는데 클릭했다는 뜻 이므로 db에 추가
			insertfavor(vo);
		}
		int ch = 0;
		if(mystudyservice.checkheart(vo.getsNum()) == null) {
		 ch = 0;
		}else if (mystudyservice.checkheart(vo.getsNum()) != null) {
			ch = mystudyservice.checkheart(vo.getsNum());
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
	public void myStudyRoom(MyStudyVO vo , Model m) {
		System.out.println("mypage 요청");
		
		List<Integer> cr = checkroom(vo); // 아이디에 따른 방번호 호출
		System.out.println("아이디에따른 방 번호 개수 :"  + cr.size());
		Integer [] temp = new Integer[cr.size()];
		for(int i =0; i<cr.size(); i++ ) {
			 System.out.println("cr : " + cr.get(i));
			 System.out.println("방 번호별 좋아요 수 : " + mystudyservice.checkheart(cr.get(i)));
			 temp[i] = mystudyservice.checkheart(cr.get(i));
		}

		List<HashMap> cf = checkfavor(vo);
		//System.out.println("cf value : " + cf.get(0).values());
		/*
		for(HashMap temp : cf) {
			System.out.println(temp.get("sFavorNum"));

		}
		 */
		// 아이디에 따른 해당 값들 호출
		
		List<HashMap> result = mystudyservice.favorRoom(vo);
		System.out.println("해당 쿼리문 개수 : " + result.size());
		//System.out.println("해시맵 체크 " +cf.get(3));
		Iterator<HashMap> it = result.iterator();
		int j =0;
		while(it.hasNext()) {
			HashMap mvsv = it.next();
			mvsv.put("sFavorNum", temp[j]); // 각각의 값에 해당하는 즐겨찾기 수 추가
			System.out.println(mvsv);
			j++;
		}

		System.out.println(result);

		//m.addAttribute("favorRoom",cf);
		m.addAttribute("favorRoom",result);

		System.out.println("mypage 이동");


	}


	/*
	 * 날짜 선택시 해당 값 출력해주는 쿼리문 ( ajax ) 
	 * 
	 */
	@RequestMapping("/checkdate")
	@ResponseBody
	public String checkdate(String date,MyStudyVO vo,Model m) {

		System.out.println("기간 선택했음");
		System.out.println(date);
		List<MyStudyVO> checkdate = mystudyservice.checkdate(date);
		System.out.println(checkdate.size());

		for( MyStudyVO k : checkdate) {
			//System.out.println(k.toString());
		}
		// List<HashMap> cf = checkfavor(vo);
		
		Gson gson = new Gson();
		JsonArray jArray = new JsonArray();
		Iterator<MyStudyVO> it = checkdate.iterator();
		while(it.hasNext()) {
			MyStudyVO msVO = it.next();
			JsonObject object = new JsonObject();
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			String str = format.format(msVO.getsDate());
			object.addProperty("sNum", 		msVO.getsNum());
			object.addProperty("sTitle", 	msVO.getsTitle());
			object.addProperty("sPeopleNum", msVO.getsPeopleNum());
			object.addProperty("sPw", 		msVO.getsPw());
			object.addProperty("sDate", 	str);
			object.addProperty("sCategory", msVO.getsCategory());
			object.addProperty("mId", 		msVO.getmId());
			//object.addProperty("sFavorNum", );

			jArray.add(object);
		}

		String json = gson.toJson(checkdate);

		System.out.println(json);  // 문자열화 된 json


		return json;
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
		해당 구문 호출시 해당 방 번호의 즐겨찾기 개수 호출 
	 */
	public List<HashMap> checkfavor(MyStudyVO vo) {
		System.out.println("checkfavor 호출");
		List<HashMap> cf = mystudyservice.checkfavor(vo);
		return cf;
	}
	/*
		해당 구문 호출시 아이디 별 해당 방 번호의 즐겨찾기 개수 호출 
	 */
	public Integer checkheart(Integer sNum) {
		int ch = mystudyservice.checkheart(sNum);
		return ch;
	}
	/*
	해당 구문 호출시 아이디 별 즐겨찾기한 방 번호들 호출 
	 */
	public List<Integer> checkroom(MyStudyVO vo) {
		List<Integer> ch = mystudyservice.checkroom(vo);
		return ch;
	}


}