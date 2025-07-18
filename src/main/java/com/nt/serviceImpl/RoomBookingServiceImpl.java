package com.nt.serviceImpl;

import java.util.List;

import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.nt.dto.AddRoomsResponseDto;
import com.nt.service.RoomBookingService;

@Service
public class RoomBookingServiceImpl implements RoomBookingService {

	@Override
	public List<AddRoomsResponseDto> getSingleRoomList() {
		RestTemplate templet=new RestTemplate();
		String url="http://localhost:9292/roomBooking/singleRoomList";
		
		HttpHeaders header=new HttpHeaders();
		
		HttpEntity<String> entity=new HttpEntity<String>(header);
		
		ParameterizedTypeReference<List<AddRoomsResponseDto>> responseType=new ParameterizedTypeReference<List<AddRoomsResponseDto>>() {
		};
		
		try{
			ResponseEntity<List<AddRoomsResponseDto>> result=templet.exchange(url, HttpMethod.GET,entity,responseType);
			return result.getBody();
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		
		return null;
	}
	

	@Override
	public List<AddRoomsResponseDto> getDoubleRoomList() {
		RestTemplate templet=new RestTemplate();
		String url="http://localhost:9292/roomBooking/DoubleRoomList";
		
		HttpHeaders header=new HttpHeaders();
		
		HttpEntity<String> entity=new HttpEntity<String>(header);
		
		ParameterizedTypeReference<List<AddRoomsResponseDto>> responseType=new ParameterizedTypeReference<List<AddRoomsResponseDto>>() {
		};
		
		try{
			ResponseEntity<List<AddRoomsResponseDto>> result=templet.exchange(url, HttpMethod.GET,entity,responseType);
			return result.getBody();
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		
		return null;
	}

}
