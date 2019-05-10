package com.leesanghyuk.service;

import com.leesanghyuk.mapper.UserMapper;
import com.leesanghyuk.model.FacilityInfoDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AddFacilityServiceImpl implements AddFacilityService {
    @Autowired
    UserMapper usermapper;

    public void addFacility(FacilityInfoDTO facilityInfoDTO) {
        usermapper.addFacility(facilityInfoDTO);
    }
}
