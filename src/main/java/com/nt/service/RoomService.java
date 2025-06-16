package com.nt.service;

import java.util.List;

import com.nt.dto.AddRoomsRequestDto;
import com.nt.dto.AddRoomsResponseDto;

public interface RoomService {

	String addRoom(AddRoomsRequestDto roomReqDto);

	List<AddRoomsResponseDto> getRoomList();

	AddRoomsResponseDto getRoom(int id);

	AddRoomsResponseDto updateRooms(AddRoomsRequestDto reqDto);

	String deleteRoom(Long id);

}
