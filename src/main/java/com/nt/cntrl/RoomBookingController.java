package com.nt.cntrl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nt.dto.AddRoomsResponseDto;
import com.nt.service.RoomBookingService;

@Controller
@RequestMapping("roomBook")
public class RoomBookingController {

    @Autowired
    private RoomBookingService roomBookingService;

    @GetMapping("/singleRoomList")
    public String getSingleRoomList(Model model) {
        List<AddRoomsResponseDto> resDto = roomBookingService.getSingleRoomList();
        model.addAttribute("singleRoomList", resDto);
        return "/book/singleRoom";     }

    @GetMapping("/doubleRoomList")
    public String getDoubleRoomList(Model model) {
        List<AddRoomsResponseDto> resDto = roomBookingService.getDoubleRoomList();
        model.addAttribute("doubleRoomList", resDto);
        return "/book/doubleRoom";
    }
}
