package com.example.demo.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.ReportService;
import com.example.demo.vo.ReportVO;

@Controller
@RequestMapping(value = "user")
public class ReportController {

   @Autowired
   private ReportService rService;
   
   //신고 데이터 입력
   @RequestMapping("insertReport")
   public String insertReport(ReportVO vo) {
	   rService.insertReportVO(vo);
	   System.out.println("###################현재시간 : " + new Date());
	   return "studyRoom/study";
   }

   
   


   
}
