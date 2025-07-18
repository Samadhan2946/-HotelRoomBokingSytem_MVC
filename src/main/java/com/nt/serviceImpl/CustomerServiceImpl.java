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

import com.nt.dto.AddRoomsRequestDto;
import com.nt.dto.AddRoomsResponseDto;
import com.nt.dto.CustomerRequestDto;
import com.nt.dto.CustomerResponseDto;
import com.nt.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Override
	public String addCustomer(CustomerRequestDto customerRequestDto) {

		RestTemplate templet = new RestTemplate();

		String url = "http://localhost:9292/customer";

		HttpHeaders header = new HttpHeaders();
		header.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<CustomerRequestDto> result = new HttpEntity<CustomerRequestDto>(customerRequestDto, header);

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

	@Override
	public List<CustomerResponseDto> getCustomerList() {
		
		RestTemplate templet=new RestTemplate();
		
		String url="http://localhost:9292/customer/customerList";
		
		HttpHeaders header=new HttpHeaders();
		
		HttpEntity<String> entity=new HttpEntity<String>(header);
		
		ParameterizedTypeReference<List<CustomerResponseDto>> responseType=new ParameterizedTypeReference<List<CustomerResponseDto>>() {
		};
		
		try{
			ResponseEntity<List<CustomerResponseDto>> result=templet.exchange(url, HttpMethod.GET,entity,responseType);
			return result.getBody();
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		
		return null;
	}

	@Override
	public CustomerResponseDto getCustomer(int id) {
		RestTemplate restTemplate = new RestTemplate();

		   
	    String url = "http://localhost:9292/customer/getCustomerById?id=" + id;

	    try {
	        
	        ResponseEntity<CustomerResponseDto> result =
	            restTemplate.getForEntity(url, CustomerResponseDto.class);

	        return result.getBody();

	    } catch (Exception e) {
	        System.out.println("Error: " + e.getMessage());
	    }

	    return null;
	}

	@Override
	public CustomerResponseDto updateCustomer(CustomerRequestDto customerRequestDto) {
           RestTemplate templet=new RestTemplate();
		
		String url="http://localhost:9292/customer/updateCustomer";
		
		HttpHeaders header=new HttpHeaders();
		header.setContentType(MediaType.APPLICATION_JSON);
		
		HttpEntity<CustomerRequestDto> entity=new HttpEntity<CustomerRequestDto>(customerRequestDto, header);
		
		try {
			ResponseEntity<CustomerResponseDto> result=templet.postForEntity(url, entity, CustomerResponseDto.class);
			return result.getBody();
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		
		return null;
		
	}

	@Override
 	public String deleteCustomer(Long id) {
           RestTemplate template = new RestTemplate();
	    
	    String url = "http://localhost:9292/customer/deleteCustomer?id=" + id; 

	    try {
	        ResponseEntity<String> result = template.getForEntity(url, String.class); 
	        return result.getBody();
	    } catch (Exception e) {
	        System.out.println(e.getMessage());
	    }

	    return null;
	} 
	}
	
