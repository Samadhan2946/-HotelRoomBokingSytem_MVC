package com.nt.serviceImpl;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.nt.dto.UserRequestDto;
import com.nt.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Override
	public String userSignUp(UserRequestDto userRequestDto) {
		
		
		RestTemplate templet=new RestTemplate();
		
		String url="http://localhost:9292/signUp_user";
		
		HttpHeaders header=new HttpHeaders();
		header.setContentType(MediaType.APPLICATION_JSON);
		
		HttpEntity<UserRequestDto> reqEntity=new HttpEntity<UserRequestDto>(userRequestDto ,header);
		
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
