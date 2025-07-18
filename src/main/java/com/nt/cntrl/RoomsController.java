 package com.nt.cntrl;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itextpdf.text.pdf.PdfStructTreeController.returnType;
import com.nt.dto.AddRoomsRequestDto;
import com.nt.dto.AddRoomsResponseDto;
import com.nt.service.RoomService;

@Controller
@RequestMapping("room")
public class RoomsController {

	@Autowired
	private RoomService roomService;

	@GetMapping("/add-rooms")
	public String room() {
		return "room/room";
	}

	@PostMapping("/addRooms")
	public String addRooms(@ModelAttribute @Valid AddRoomsRequestDto roomReqDto, Model model) {
	    roomReqDto.setStatus("Available");
	    String roomAdded = roomService.addRoom(roomReqDto);

	    if (roomAdded.equals(roomAdded)) { 
	        model.addAttribute("messageSuccess", "Room is Added");
	        return "room/success";
	    } else {
	        model.addAttribute("messageError", "Room is not Added");
	        return "room/error";
	    }
	}


//		

	

	@GetMapping("/room-list")
	public String getRoomList(Model model) {
		List<AddRoomsResponseDto> roomList = roomService.getRoomList();

		model.addAttribute("roomlist", roomList);
		return "room/roomlist";

	}

	@GetMapping("/editRoom/{id}")
	public String getById(@PathVariable int id, Model model) {
		AddRoomsResponseDto resDto = roomService.getRoom(id);

		if (resDto != null) {
			model.addAttribute("room", resDto);
			return "room/update";
		} else {
			model.addAttribute("messageError", "Room is not found");
			return "room/error";
		}
	}

	@PostMapping("/update-room")
	public String updateRoom(@ModelAttribute AddRoomsRequestDto reqDto, Model model) {

		System.out.println(reqDto.getDescription());
		AddRoomsResponseDto resDto = roomService.updateRooms(reqDto);

		if (resDto != null) {
			model.addAttribute("messageSuccess", "Room is Updated");
			return "room/success";
		} else {
			model.addAttribute("messageError", "Room is not Updated");
			return "room/error";
		}

	}

	@GetMapping("/delete/{id}")
	public String DeleteRoom(@PathVariable Long id, Model model) {

		String roomDeleted = roomService.deleteRoom(id);

		if (roomDeleted != null) {
			model.addAttribute("messageSuccess", "Room is Deleted");
			return "room/success";
		} else {
			model.addAttribute("messageError", "Room is not  Deleted");
			return "room/error";
		}

	}
}
