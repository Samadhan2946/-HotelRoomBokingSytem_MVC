package com.nt.cntrl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nt.dto.StaffRequestDto;
import com.nt.dto.StaffResponseDto;
import com.nt.service.StaffService;

@Controller
@RequestMapping("staff")
public class StaffController {

	@Autowired
	private StaffService staffService;
	
	
	@GetMapping("/add-staff")
	public String staff() {
		return "staff/staff";
	}
	
	
	@PostMapping("/addstaff")
	public String addStaffData(@ModelAttribute StaffRequestDto staffReqDto,Model model) {

		String resfromDatabase = staffService.addStaffData(staffReqDto);

		if(resfromDatabase != null) {
			model.addAttribute("messageSuccess", "Staff is Added");
			return "result/success";
		}else {
			model.addAttribute("messageError", "Staff is not Added");
			return "result/error";
		}
		
	}

	@GetMapping("/staffList")
	public String getStaffList(Model model) {

		List<StaffResponseDto> staffResponseDtos = staffService.getStaffList();

		model.addAttribute("staffList", staffResponseDtos);
		return "staff/stafflist";
////		
//		for(StaffResponseDto staff:staffResponseDtos) {
//			System.out.println(staff.getAddress());
//		}

	}

	@GetMapping("/editStaff/{id}")
	public String getStaffById(@PathVariable int id, Model model) {

		StaffResponseDto staffResponseDto = staffService.getStaffById(id);

		if (staffResponseDto != null) {
			model.addAttribute("staff", staffResponseDto);
			return "staff/update";
		} else {
			model.addAttribute("messageError", "Staff is not found");
			return "result/error";
		}
	}

	@PostMapping("/update-staff")
	public String updateStaffById(@ModelAttribute StaffRequestDto staffRequestDto, Model model) {
		System.out.println(staffRequestDto.getId());
		
		String isUpdate = staffService.updateStaffById(staffRequestDto);
		
		if(isUpdate != null) {
			model.addAttribute("messageSuccess", "Staff is Updated");
			return "result/success";
		}else {
			model.addAttribute("messageError", "Staff is not Updated");
			return "result/error";
		}
		

		/*
		 * if (isUpdate != null) { model.addAttribute("msgSuccess", "Data is Updated");
		 * return "admin/success"; } else { model.addAttribute("msgError",
		 * "Data is not Updated"); return "admin/error"; }
		 */
	}
	
	@GetMapping("/deleteStaffById/{id}")
	public String deleteStaffById(@PathVariable int id, Model model) {
		
		String isDelete= staffService.deleteStaffById(id);
		
		if(isDelete != null) {
			model.addAttribute("messageSuccess", "Staff is Deleted");
			return "result/success";
		}else {
			model.addAttribute("messageError", "Staff is not Deleted");
			return "result/error";
		}
		
		
	}

}