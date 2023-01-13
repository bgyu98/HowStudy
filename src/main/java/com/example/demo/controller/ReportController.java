package com.example.demo.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.service.ReportService;
import com.example.demo.vo.ReportVO;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "user")
public class ReportController {

   @Autowired
   private ReportService rService;
   
   //신고 데이터 입력
   @RequestMapping("insertReport")
   public String insertReport(ReportVO vo) {
	   rService.insertReportVO(vo);
	   return "studyRoom/study";
   }
   
   
   


   
}
