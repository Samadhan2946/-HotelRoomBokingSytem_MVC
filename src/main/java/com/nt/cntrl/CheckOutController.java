package com.nt.cntrl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nt.dto.CheckOutResponseDto;
import com.nt.dto.ConfirmCheckOutRequestDto;
import com.nt.dto.ReceiptResponseDto;
import com.nt.service.CheckOutService;

@Controller
@RequestMapping("/checkout") 
public class CheckOutController {

    @Autowired
    private CheckOutService checkOutService;
    
    @GetMapping 
    public String checkOutAndCalculatePrice(@RequestParam("id") Long id, Model model) {
        CheckOutResponseDto checkOutResponseDto = checkOutService.checkoutAndCalculatePrice(id);
        model.addAttribute("checkOut", checkOutResponseDto);
        return "checkout/checkoutRoom";  
    }
    
    @PostMapping("/saveCheckout")
    public String confirmCheckOut(@ModelAttribute ConfirmCheckOutRequestDto confirmCheckOutRequestDto, Model model) {
        
        String checkoutConfirm = checkOutService.confirmCheckOut(confirmCheckOutRequestDto);

        if (checkoutConfirm != null && checkoutConfirm.equals("CheckOut Confirmed")) {
            model.addAttribute("messageSuccess", "Checkout Completed Successfully!");
            return "checkout/success";    
        } else {
            model.addAttribute("messageError", "Checkout Failed!");
            return "checkout/error";     
        }
    }

}
