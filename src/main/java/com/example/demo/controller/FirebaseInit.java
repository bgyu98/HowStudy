package com.example.demo.controller;

import java.io.IOException;

import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;

import jakarta.annotation.PostConstruct;

@Service
public class FirebaseInit {
	
	 private static final String path = "howstudy-a7c5d-firebase-adminsdk-ikh2j-4a477e007e.json";

	    @PostConstruct
	    public void init(){
	        try{
	            FirebaseOptions options = new FirebaseOptions.Builder()
	                    .setCredentials(GoogleCredentials.fromStream(new ClassPathResource(path).getInputStream())).build();

	            if(FirebaseApp.getApps().isEmpty()){
	                FirebaseApp.initializeApp(options);
	            }
	        }catch (IOException e){
	            e.printStackTrace();
	        }
	    }
	
	

}
