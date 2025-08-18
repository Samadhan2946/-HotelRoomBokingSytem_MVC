package com.nt.cntrl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nt.dto.AddRoomsResponseDto;
import com.nt.dto.GenerateReceiptResponseDto;
import com.nt.dto.ReceiptRequestDto;
import com.nt.dto.ReceiptResponseDto;
import com.nt.service.ReceiptService;

@Controller
@RequestMapping("receipt")
public class ReceiptController {

	@Autowired
	private ReceiptService receiptService;

	@GetMapping("/checkoutList")
	public String getCheckOutList(Model model) {
		List<ReceiptResponseDto> receiptResponseDtos = receiptService.getCheckOutList();
		model.addAttribute("checkoutList", receiptResponseDtos);

		return "receipt/checkOutList";
	}

	@PostMapping("/generateReceipt")
	public String generateReceipt(@ModelAttribute ReceiptRequestDto receiptRequestDto,Model model) {
		System.out.println(receiptRequestDto.getId());
		System.out.println(receiptRequestDto.getCheckoutDate());

		GenerateReceiptResponseDto generateReceiptResponseDto = receiptService.generateReceiptAndRemoveCheckout(receiptRequestDto);

		model.addAttribute("receipt", generateReceiptResponseDto);

		return "receipt/generateReceipt"; 
	}

}
