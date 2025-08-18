package com.nt.service;

import java.util.List;

import com.nt.dto.GenerateReceiptResponseDto;
import com.nt.dto.ReceiptRequestDto;
import com.nt.dto.ReceiptResponseDto;

public interface ReceiptService {

	List<ReceiptResponseDto> getCheckOutList();

	GenerateReceiptResponseDto generateReceiptAndRemoveCheckout(ReceiptRequestDto receiptRequestDto);

}
