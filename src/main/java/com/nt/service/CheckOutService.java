package com.nt.service;

import com.nt.dto.CheckOutResponseDto;
import com.nt.dto.ConfirmCheckOutRequestDto;
import com.nt.dto.ReceiptResponseDto;

public interface CheckOutService {

	CheckOutResponseDto checkoutAndCalculatePrice(Long id);

	String confirmCheckOut(ConfirmCheckOutRequestDto confirmCheckOutRequestDto);

}
