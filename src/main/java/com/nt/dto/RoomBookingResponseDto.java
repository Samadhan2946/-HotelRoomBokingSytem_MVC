package com.nt.dto;

import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RoomBookingResponseDto {
	private int id;
    private Long roomId;
    private String customerId;
    private LocalDate bookingDate;

}
