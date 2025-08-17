package com.nt.serviceImpl;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.nt.dto.AddRoomsResponseDto;
import com.nt.dto.CheckOutResponseDto;
import com.nt.dto.ConfirmCheckOutRequestDto;
import com.nt.dto.CustomerRequestDto;
import com.nt.dto.ReceiptResponseDto;
import com.nt.service.CheckOutService;

@Service
public class CheckOutServiceImpl implements CheckOutService {

	@Override
	public CheckOutResponseDto checkoutAndCalculatePrice(Long id) {
		RestTemplate restTemplate = new RestTemplate();

		String url = "http://localhost:9292/checkoutApi?id=" + id;

		try {

			ResponseEntity<CheckOutResponseDto> result = restTemplate.getForEntity(url, CheckOutResponseDto.class);

			return result.getBody();

		} catch (Exception e) {
			System.out.println("Error: " + e.getMessage());
		}

		return null;
	}



	@Override
	public String confirmCheckOut(ConfirmCheckOutRequestDto confirmCheckOutRequestDto) {
		
		System.out.println(confirmCheckOutRequestDto.getTotalAmount());
		System.out.println(confirmCheckOutRequestDto.getCustomerName());
		
		RestTemplate templet = new RestTemplate();

		String url = "http://localhost:9292/checkoutApi/confirmCheckOut";

		HttpHeaders header = new HttpHeaders();
		header.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<ConfirmCheckOutRequestDto> result = new HttpEntity<ConfirmCheckOutRequestDto>(
				confirmCheckOutRequestDto, header);

		try {
			ResponseEntity<String> response = templet.postForEntity(url, result, String.class);

			return response.getBody();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		{
			return null;
		}

	}
}