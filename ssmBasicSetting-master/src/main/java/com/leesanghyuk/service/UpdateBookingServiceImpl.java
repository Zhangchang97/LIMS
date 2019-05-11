package com.leesanghyuk.service;

import com.leesanghyuk.mapper.UserMapper;
import com.leesanghyuk.model.FacilityInfoDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UpdateBookingServiceImpl implements UpdateBookingService {
    @Autowired
    UserMapper usermapper;

    public void updateBooking(FacilityInfoDTO facilityInfoDTO) {
        usermapper.updateBooking(facilityInfoDTO);
    }
}
