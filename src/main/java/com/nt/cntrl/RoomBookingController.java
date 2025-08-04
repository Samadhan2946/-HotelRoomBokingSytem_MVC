package com.nt.cntrl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nt.dto.AddRoomsResponseDto;
import com.nt.dto.CustomerResponseDto;
import com.nt.dto.RoomBookingRequestDto;
import com.nt.service.CustomerService;
import com.nt.service.RoomBookingService;

@Controller
@RequestMapping("roomBook")
public class RoomBookingController {

	@Autowired
	private RoomBookingService roomBookingService;

	@Autowired
	private CustomerService customerService;

	@GetMapping("/singleRoomList")
	public String getSingleRoomList(Model model) {
		List<AddRoomsResponseDto> resDto = roomBookingService.getSingleRoomList();
		model.addAttribute("singleRoomList", resDto);
		return "/roomBook/singleRoom";
	}

	@GetMapping("/doubleRoomList")
	public String getDoubleRoomList(Model model) {
		List<AddRoomsResponseDto> resDto = roomBookingService.getDoubleRoomList();
		model.addAttribute("doubleRoomList", resDto);
		return "roomBook/doubleRoom";
	}

	/*
	 * @GetMapping("/bookNow") public String bookNowPage(@RequestParam("roomId") int
	 * roomId, Model model) { model.addAttribute("roomId", roomId); return
	 * "/roomBook/bookNow"; }
	 */

	@GetMapping("/bookNow")
	public String getAllCustomers(Model model) {
		List<CustomerResponseDto> customerList = roomBookingService.getAllCustomerNames();

		model.addAttribute("customer", customerList);
		return "roomBook/bookNow";
	}

	@PostMapping("/confirmBooking")
	public void bookRoomNow(@ModelAttribute RoomBookingRequestDto roomBookingRequestDto,  Model model) {
		System.out.println(roomBookingRequestDto.getId());
		String isAdded = roomBookingService.bookRoomNow(roomBookingRequestDto);

	}

}
