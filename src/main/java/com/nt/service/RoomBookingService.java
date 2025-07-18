package com.nt.service;

import java.util.List;

import com.nt.dto.AddRoomsResponseDto;

public interface RoomBookingService {

	List<AddRoomsResponseDto> getSingleRoomList();

	List<AddRoomsResponseDto> getDoubleRoomList();
	
	

}
