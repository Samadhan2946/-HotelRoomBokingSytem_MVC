package com.nt.serviceImpl;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.itextpdf.text.Header;
import com.nt.dto.LoginRequestDto;
import com.nt.dto.LoginResponseDto;
import com.nt.service.LoginService;

@Service
public class LoginServiceIml implements LoginService {

	@Override
	public LoginResponseDto loginUserService(LoginRequestDto loginDto) {
		
		System.out.println(loginDto.getEmail());
		System.out.println(loginDto.getPassword());
		
		
		RestTemplate template=new RestTemplate();
		String url="http://localhost:9292/login";
		
		HttpHeaders header=new HttpHeaders();
		header.setContentType(MediaType.APPLICATION_JSON);
		
		HttpEntity<LoginRequestDto> request=new HttpEntity<LoginRequestDto>(loginDto, header);
		try {
			
			ResponseEntity<LoginResponseDto> result=template.postForEntity(url, request, LoginResponseDto.class);
			return result.getBody();
		}catch (Exception e) {
			// TODO: handle exception
			e.getMessage();
		}
		return null;
	}

}
