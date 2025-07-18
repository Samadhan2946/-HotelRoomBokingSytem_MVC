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

import com.nt.dto.AddRoomsRequestDto;
import com.nt.dto.AddRoomsResponseDto;
import com.nt.dto.CustomerRequestDto;
import com.nt.dto.CustomerResponseDto;
import com.nt.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	private CustomerService customerService;

	@GetMapping("/add-customer")
	public String customer() {
		return "customer/customer";

	}

	@PostMapping("/addCustomer")
	public String addCustomer(@ModelAttribute @Valid CustomerRequestDto customerRequestDto, Model model) {

		String customerAdded = customerService.addCustomer(customerRequestDto);

		if (customerAdded != null) {
			model.addAttribute("messageSuccess", "Customer is Added");
			return "result/success";
		} else {
			model.addAttribute("messageError", "Customer is not Added");
			return "result/error";
		}
	}

	@GetMapping("/customer-list")
	public String getCustomerList(Model model) {
		List<CustomerResponseDto> customerResponseDtos = customerService.getCustomerList();

		model.addAttribute("customerList", customerResponseDtos);
		return "customer/customerList";

	}

	@GetMapping("/editCustomer/{id}")
	public String getCustomerById(@PathVariable int id, Model model) {
		CustomerResponseDto customerResponseDto = customerService.getCustomer(id);

		if (customerResponseDto != null) {
			model.addAttribute("customer", customerResponseDto);
			return "customer/update";
		} else {
			model.addAttribute("messageError", "Customer is not found");
			return "result/error";
		}

	}
	
	
	@PostMapping("/update-customer")
	public String updateCustomer(@ModelAttribute CustomerRequestDto customerRequestDto, Model model) {

		
		CustomerResponseDto customerResponseDto = customerService.updateCustomer(customerRequestDto);

		if (customerResponseDto != null) {
			model.addAttribute("messageSuccess", "Customer is Updated");
			return "result/success";
		} else {
			model.addAttribute("messageError", "Customer is not Updated");
			return "result/error";
		}

	}
	
	
	@GetMapping("/delete/{id}")
	public String deleteCustomer(@PathVariable Long id, Model model) {

		String customerDeleted = customerService.deleteCustomer(id);

		if (customerDeleted != null) {
			model.addAttribute("messageSuccess", "Customer is Deleted");
			return "result/success";
		} else {
			model.addAttribute("messageError", "Customer is not  Deleted");
			return "result/error";
		}

	}
}
