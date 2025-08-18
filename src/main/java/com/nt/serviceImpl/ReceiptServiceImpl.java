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
import com.nt.dto.CustomerRequestDto;
import com.nt.dto.CustomerResponseDto;
import com.nt.dto.GenerateReceiptResponseDto;
import com.nt.dto.ReceiptRequestDto;
import com.nt.dto.ReceiptResponseDto;
import com.nt.service.ReceiptService;

@Service
public class ReceiptServiceImpl implements ReceiptService{

	@Override
	public List<ReceiptResponseDto> getCheckOutList() {
		RestTemplate templet=new RestTemplate();
		String url="http://localhost:9292/generateReceipt/getAllCheckOut";
		
		HttpHeaders header=new HttpHeaders();
		
		HttpEntity<String> entity=new HttpEntity<String>(header);
		
		ParameterizedTypeReference<List<ReceiptResponseDto>> responseType=new ParameterizedTypeReference<List<ReceiptResponseDto>>() {
		};
		
		try{
			ResponseEntity<List<ReceiptResponseDto>> result=templet.exchange(url, HttpMethod.GET,entity,responseType);
			return result.getBody();
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		
		return null;
	}
		// TODO Auto-generated method stub

	@Override
	public GenerateReceiptResponseDto generateReceiptAndRemoveCheckout(ReceiptRequestDto receiptRequestDto) {
		RestTemplate templet = new RestTemplate();

		String url = "http://localhost:9292/generateReceipt/generateReceiptAndRemoveCheckout";

		HttpHeaders header = new HttpHeaders();
		header.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<ReceiptRequestDto> entity = new HttpEntity<ReceiptRequestDto>(receiptRequestDto, header);

		try {
			ResponseEntity<GenerateReceiptResponseDto> result = templet.postForEntity(url, entity, GenerateReceiptResponseDto.class);
			return result.getBody();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}

		return null;
	}
	
}
