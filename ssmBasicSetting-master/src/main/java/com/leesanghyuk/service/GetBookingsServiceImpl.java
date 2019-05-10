package com.leesanghyuk.service;

import com.leesanghyuk.mapper.UserMapper;
import com.leesanghyuk.model.ExperimentInfoDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GetBookingsServiceImpl implements GetBookingsService {
    @Autowired
    UserMapper usermapper;

    public int getBookings(ExperimentInfoDTO experimentInfoDTO) {
        int bookings = usermapper.getbookings(experimentInfoDTO);
        return bookings;
    }
}
