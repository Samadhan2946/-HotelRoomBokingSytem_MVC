package com.nt.cntrl;



import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nt.dto.UserRequestDto;
import com.nt.service.UserService;

@Controller
public class UserController {

	@GetMapping("/user")
	public String showSignUp() {
		return"user/user";
	}
	
	@Autowired
	private UserService userService;
	
	@PostMapping("/signUp-User")
	public String signUpUser(@ModelAttribute @Valid UserRequestDto userRequestDto, Model model) {
		
		userRequestDto.setRole("customer");
		
		String data=userService.userSignUp(userRequestDto);
		
		if(data!=null) {
			model.addAttribute("messageSuccess","SignUp is Successfull");
			return "result/success";
			
		}else {
			model.addAttribute("messageError","SignUp is Not Successfull");
			return "result/error";
		}
	}
}
