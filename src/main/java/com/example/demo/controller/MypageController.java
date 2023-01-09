package com.example.demo.controller;

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
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

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
	 * mypage 들어갔을 경우 선호 태그 목록 출력
	 */
	@RequestMapping("/mystudyroom")
	public void favorRoom(MyStudyVO vo, Model m) {
		System.out.println("favorRoom 요청");
		List<MyStudyVO> list = mystudyservice.favorRoom(vo);
		System.out.println(list.size());
		m.addAttribute("favorRoom", list);
		for( MyStudyVO k : list) {
			System.out.println(k.toString());
		}		
		
	}
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
		
		Gson gson = new Gson();
		JsonArray jArray = new JsonArray();
		Iterator<MyStudyVO> it = checkdate.iterator();
		while(it.hasNext()) {
			MyStudyVO MsVO = it.next();
			 JsonObject object = new JsonObject();
			 object.addProperty("sNum", MsVO.getsNum());
			 object.addProperty("sTitle", MsVO.getsTitle());
			 object.addProperty("sPeopleNum", MsVO.getsNum());
			 object.addProperty("sPw", MsVO.getsNum());
			 object.addProperty("sDate", MsVO.getsNum());
			 object.addProperty("sCategory", MsVO.getsNum());
			 object.addProperty("mId", MsVO.getsNum());
			 object.addProperty("sCategory", MsVO.getsNum());
			 jArray.add(object);
		}
		
		String json = gson.toJson(checkdate);
        
       System.out.println(json);  // 문자열화 된 json
        
    
        return json;
   }
   
}
