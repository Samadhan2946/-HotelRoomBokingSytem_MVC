package com.nt.service;

import java.util.List;

import com.nt.dto.StaffRequestDto;
import com.nt.dto.StaffResponseDto;

public interface StaffService {

	String addStaffData(StaffRequestDto staffReqDto);

	List<StaffResponseDto> getStaffList();

	

	StaffResponseDto getStaffById(int id);

	String updateStaffById(StaffRequestDto staffRequestDto);

	String deleteStaffById(int id);

}
