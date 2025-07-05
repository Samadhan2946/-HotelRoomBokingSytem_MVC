package com.nt.serviceImpl;

import java.util.List;

import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.nt.dto.AddRoomsResponseDto;
import com.nt.dto.StaffRequestDto;
import com.nt.dto.StaffResponseDto;
import com.nt.service.StaffService;

@Service
public class StaffServiceImpl implements StaffService {

	@Override
	public String addStaffData(StaffRequestDto staffReqDto) {
		System.out.println(staffReqDto.getJoiningDate());

		RestTemplate template = new RestTemplate();

		String url = "http://localhost:9292/add-Staff";

		HttpHeaders header = new HttpHeaders();
		header.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<StaffRequestDto> entity = new HttpEntity<StaffRequestDto>(staffReqDto, header);

		try {

			ResponseEntity<String> result = template.postForEntity(url, entity, String.class);
			return result.getBody();

		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;

	}

	@Override
	public List<StaffResponseDto> getStaffList() {

		RestTemplate templet = new RestTemplate();

		String url = "http://localhost:9292/add-Staff/room-List";

		HttpHeaders header = new HttpHeaders();
		header.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<StaffRequestDto> entity = new HttpEntity<StaffRequestDto>(header);

		ParameterizedTypeReference<List<StaffResponseDto>> responseType = new ParameterizedTypeReference<List<StaffResponseDto>>() {
		};

		try {

			ResponseEntity<List<StaffResponseDto>> result = templet.exchange(url, HttpMethod.GET, entity, responseType);
			return result.getBody();

		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;

	}

	@Override
	public StaffResponseDto getStaffById(int id) {

		RestTemplate template = new RestTemplate();

		String url = "http://localhost:9292/add-Staff/updateStaff?id=" + id;

		try {

			ResponseEntity<StaffResponseDto> result = template.getForEntity(url, StaffResponseDto.class);

			return result.getBody();

		} catch (Exception e) {
			System.out.println("Error: " + e.getMessage());
		}

		return null;
	}

	@Override
	public String updateStaffById(StaffRequestDto staffRequestDto) {
		
		RestTemplate restTemplate =new RestTemplate();
		
		String url="http://localhost:9292/add-Staff/update";
		
		HttpHeaders headers=new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		
		HttpEntity<StaffRequestDto> entity=new HttpEntity<StaffRequestDto>(staffRequestDto ,headers);
		
		try {
			
			ResponseEntity<String> result=restTemplate.postForEntity(url, staffRequestDto, String.class);
			return result.getBody();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
		
	}

	@Override
	public String deleteStaffById(int id) {
		
		RestTemplate template = new RestTemplate();

		String url = "http://localhost:9292/add-Staff/deleteStaffById?id=" + id;

		try {

			ResponseEntity<String> result = template.getForEntity(url, String.class);

			return result.getBody();

		} catch (Exception e) {
			System.out.println("Error: " + e.getMessage());
		}

		return null;
	}
		
	}

