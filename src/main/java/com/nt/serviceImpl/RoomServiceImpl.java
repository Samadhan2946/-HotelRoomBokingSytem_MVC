package com.nt.serviceImpl;

import java.util.List;

import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.itextpdf.text.pdf.PdfStructTreeController.returnType;
import com.nt.dto.AddRoomsRequestDto;
import com.nt.dto.AddRoomsResponseDto;
import com.nt.service.RoomService;

@Service
public class RoomServiceImpl implements RoomService {

	@Override
	public String addRoom(AddRoomsRequestDto roomReqDto) {
		

		System.out.println(roomReqDto.getBed_count());
		System.out.println(roomReqDto.getRoom_number());	
		
		RestTemplate templet=new RestTemplate();
		
		String url="http://localhost:9292/addRooms";
		
		HttpHeaders header=new HttpHeaders();
		header.setContentType(MediaType.APPLICATION_JSON);
		
		HttpEntity<AddRoomsRequestDto> result=new HttpEntity<AddRoomsRequestDto>(roomReqDto, header);
		
	
			try {
				ResponseEntity<String> response=templet.postForEntity(url,result, String.class);
				
				return response.getBody();
			}catch (Exception e) {
				System.out.println(e.getMessage());
			}{
				return null;
		
			
		}
	
	
		
	
	}

	@Override
	public List<AddRoomsResponseDto> getRoomList() {
		
		RestTemplate templet=new RestTemplate();
		String url="http://localhost:9292/addRooms/roomList";
		
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
	public AddRoomsResponseDto getRoom(int id) {

	    RestTemplate restTemplate = new RestTemplate();

	   
	    String url = "http://localhost:9292/addRooms/getById?id=" + id;

	    try {
	        
	        ResponseEntity<AddRoomsResponseDto> result =
	            restTemplate.getForEntity(url, AddRoomsResponseDto.class);

	        return result.getBody();

	    } catch (Exception e) {
	        System.out.println("Error: " + e.getMessage());
	    }

	    return null;
	}

	@Override
	public AddRoomsResponseDto updateRooms(AddRoomsRequestDto reqDto) {
		
		System.out.println(reqDto.getDescription());
		
		RestTemplate templet=new RestTemplate();
		
		String url="http://localhost:9292/addRooms/updateRoom";
		
		HttpHeaders header=new HttpHeaders();
		header.setContentType(MediaType.APPLICATION_JSON);
		
		HttpEntity<AddRoomsRequestDto> entity=new HttpEntity<AddRoomsRequestDto>(reqDto, header);
		
		try {
			ResponseEntity<AddRoomsResponseDto> result=templet.postForEntity(url, entity, AddRoomsResponseDto.class);
			return result.getBody();
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		
		return null;
		
	}

	@Override
	public String deleteRoom(Long id) {
	    RestTemplate template = new RestTemplate();
	    
	    String url = "http://localhost:9292/addRooms/delete?id=" + id; // simple GET

	    try {
	        ResponseEntity<String> result = template.getForEntity(url, String.class); // GET not POST
	        return result.getBody();
	    } catch (Exception e) {
	        System.out.println(e.getMessage());
	    }

	    return null;
	}
}