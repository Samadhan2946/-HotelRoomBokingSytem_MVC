package com.nt.cntrl;



import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nt.dto.SignUpRequestDto;
import com.nt.service.SignUpService;

@Controller
public class SignUpController {

	@GetMapping("/sign-Up")
	public String showSignUp() {
		return"signUp/signUp2";
	}
	
	@Autowired
	private SignUpService signUpService;
	
	@PostMapping("/signUp-User")
	public String signUpUser(@ModelAttribute @Valid SignUpRequestDto reqDto, Model model) {
		
		reqDto.setRole("customer");
		
		String data=signUpService.userSignUp(reqDto);
		
		if(data!=null) {
			model.addAttribute("msgSuccess","Data is Added Successfully");
			return "signUp/success";
			
		}else {
			model.addAttribute("msgError","Data is Not Added Successfully");
			return "signUp/error";
		}
	}
}
