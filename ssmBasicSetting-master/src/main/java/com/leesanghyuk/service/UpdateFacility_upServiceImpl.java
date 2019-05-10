package com.leesanghyuk.service;

import com.leesanghyuk.mapper.UserMapper;
import com.leesanghyuk.model.ExperimentInfoDTO;
import com.leesanghyuk.model.FacilityInfoDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UpdateFacility_upServiceImpl implements UpdateFacility_upService {
    @Autowired
    UserMapper usermapper;

    public void updateFacilityInfo(FacilityInfoDTO facilityinfodto) {
        usermapper.updateFacilityInfo(facilityinfodto);
    }
}
