package com.nt.service;

import com.nt.dto.UserRequestDto;
import com.nt.dto.UserResponseDto;

public interface UserService {

	String userSignUp(UserRequestDto userRequestDto);

	UserResponseDto loginUser(UserRequestDto userRequestDto);

}
