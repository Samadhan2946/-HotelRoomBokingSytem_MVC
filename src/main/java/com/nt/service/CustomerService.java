package com.nt.service;

import java.util.List;

import com.nt.dto.CustomerRequestDto;
import com.nt.dto.CustomerResponseDto;

public interface CustomerService {

	String addCustomer(CustomerRequestDto customerRequestDto);

	List<CustomerResponseDto> getCustomerList();

	CustomerResponseDto getCustomer(int id);

	CustomerResponseDto updateCustomer(CustomerRequestDto customerRequestDto);

	String deleteCustomer(Long id);

	
}
