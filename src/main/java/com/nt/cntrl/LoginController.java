package com.nt.cntrl;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.nt.dto.LoginRequestDto;
import com.nt.dto.LoginResponseDto;
import com.nt.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;

	@PostMapping("/loginUser")
	public String loginUser(@ModelAttribute @Valid LoginRequestDto loginDto, Model model, HttpSession session) {

		LoginResponseDto dto = loginService.loginUserService(loginDto);

		if (dto == null) {
			return "login/login2";

		}



		if (dto.getRole().equals("Admin")) {
			return "admin/index";
		} else if (dto.getRole().equals("Customer")) {
			return "adminCommon/footer";
		} else {
			return "login/login";
		}
	}
}
