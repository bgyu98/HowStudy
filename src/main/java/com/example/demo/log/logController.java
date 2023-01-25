package com.example.demo.log;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.time.LocalDateTime;
import org.springframework.web.bind.annotation.RestController;
import lombok.extern.slf4j.Slf4j;


@RestController
@Slf4j
public class logController {
	
	
	public void logCustomer(String strToWrite) {
	      try {
	         File myObj = new File("fileLog.txt");
	         FileWriter myWriter = null;
	         if (myObj.createNewFile()) {
	            myWriter = new FileWriter("D:\\howStudy\\howStudy\\logs\\application.log");
	            LocalDateTime now = LocalDateTime.now();	// 현재 날짜와 시간 불러오는 객체
	            myWriter.write(strToWrite + String.valueOf(now));
	            myWriter.write('\n');
	         } else {
	            // file already exists
	            myWriter = new FileWriter("D:\\howStudy\\howStudy\\logs\\application.log", true);
	            LocalDateTime now = LocalDateTime.now();
	            myWriter.write(strToWrite + String.valueOf(now));
	            myWriter.write('\n');
	         }
	         myWriter.close();
	      } catch (IOException e) {
	         e.printStackTrace();
	      }
	   }//logCustomer
	
	
	
}
