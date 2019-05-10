package com.leesanghyuk.service;

import com.leesanghyuk.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DeleteFacilityServiceImpl implements DeleteFacilityService {
    @Autowired
    UserMapper usermapper;

    public void deleteFacility(int id) {
        usermapper.deleteFacility(id);
    }
}
