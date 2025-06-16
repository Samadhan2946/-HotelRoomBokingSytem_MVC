package com.nt.serviceImpl;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.nt.dto.SignUpRequestDto;
import com.nt.service.SignUpService;

@Service
public class SignUpServiceImpl implements SignUpService {

	@Override
	public String userSignUp(SignUpRequestDto reqDto) {
		
		
		RestTemplate templet=new RestTemplate();
		
		String url="http://localhost:9696/signUp_user";
		
		HttpHeaders header=new HttpHeaders();
		header.setContentType(MediaType.APPLICATION_JSON);
		
		HttpEntity<SignUpRequestDto> reqEntity=new HttpEntity<SignUpRequestDto>(reqDto ,header);
		
		ResponseEntity<String> result=templet.postForEntity(url, reqEntity, String.class);
		return result.getBody();
		
		
		
		
//		System.out.println(reqDto.getFirstName());
//		System.out.println(reqDto.getLastName());
//		System.out.println(reqDto.getEmail());
//		System.out.println(reqDto.getMobile());
//		System.out.println(reqDto.getPassword());
//		System.out.println(reqDto.getRole());
//		
		
	}

}
