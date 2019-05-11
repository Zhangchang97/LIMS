package com.leesanghyuk.service;

import com.leesanghyuk.mapper.UserMapper;
import com.leesanghyuk.model.FacilityInfoDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GetBookingServiceImpl implements GetBookingService{
    @Autowired
    UserMapper usermapper;

    public int getBooking(FacilityInfoDTO facilityInfoDTO) {
        int booking = usermapper.getBooking(facilityInfoDTO);
        System.out.println("GetBooking方法中取到的booking="+booking);
        return booking;
    }
}
