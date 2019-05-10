package com.leesanghyuk.service;

import com.leesanghyuk.mapper.UserMapper;
import com.leesanghyuk.model.ExperimentInfoDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UpdateBookingsServiceImpl implements UpdateBookingsService{
    @Autowired
    UserMapper usermapper;

    public void updateBookings(ExperimentInfoDTO experimentInfoDTO) {
        usermapper.updatebookings(experimentInfoDTO);
    }
}
