package com.nt.service;


import com.nt.dto.LoginRequestDto;
import com.nt.dto.LoginResponseDto;


public interface LoginService {

	LoginResponseDto loginUserService(LoginRequestDto loginDto);

}
