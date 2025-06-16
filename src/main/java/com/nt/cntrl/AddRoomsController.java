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

public class AddRoomsController {

	@Autowired
	private RoomService roomService;

	@PostMapping("/addRooms")
	public void addRooms(@ModelAttribute @Valid AddRoomsRequestDto roomReqDto, Model model) {
        roomReqDto.setStatus("Available");
        roomService.addRoom(roomReqDto);
        
        
//		
		
	}

	@GetMapping("/rooms")
	public String getRoomList(Model model) {
		List<AddRoomsResponseDto> roomList = roomService.getRoomList();
		System.out.println(roomList);

		model.addAttribute("rooms", roomList);
		return "admin/rooms";

	}
	
	@GetMapping("/editRoom/{id}")
	public String getById(@PathVariable int id, Model model) {
		AddRoomsResponseDto resDto =roomService.getRoom(id);
		
		
		
		if(resDto!=null) {
		model.addAttribute("room",resDto);
		return "admin/update";
	}else {
		model.addAttribute("msgError","data is not found");
		return "signUp/error";
	}
	}
	
	
	@PostMapping("/updateRoom")
	public String updateRoom(@ModelAttribute AddRoomsRequestDto reqDto,Model model) {
		
	 AddRoomsResponseDto resDto= roomService.updateRooms(reqDto);
	 
	 if(resDto!=null) {
		 model.addAttribute("msgError","Data is not Updated");
		 return "admin/success";
	 }else {
		 model.addAttribute("msgSuccess","Data is Updated");
		 return "admin/error";
	 }
	
	 
	 
	
	}
	
	@GetMapping("/delete/{id}")
	public String DeleteRoom(@PathVariable Long id, Model model) {
		
		
		
		String roomDeleted=roomService.deleteRoom(id);
		
		if(roomDeleted!=null) {
			model.addAttribute("msgSuccess","Data is Deleted");
			return "admin/success";
		}else {
			model.addAttribute("msgError","Data is not  Deleted");
			return "admin/error";
		}
		
	}
}
