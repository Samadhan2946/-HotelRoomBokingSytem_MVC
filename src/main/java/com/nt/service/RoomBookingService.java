package com.nt.service;

import java.util.List;

import com.nt.dto.AddRoomsResponseDto;
import com.nt.dto.CustomerResponseDto;
import com.nt.dto.RoomBookingRequestDto;

public interface RoomBookingService {

	List<AddRoomsResponseDto> getSingleRoomList();

	List<AddRoomsResponseDto> getDoubleRoomList();

	List<CustomerResponseDto> getAllCustomerNames();

	String bookRoomNow(RoomBookingRequestDto roomBookingRequestDto);
	
	

}
