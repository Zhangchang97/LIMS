package com.leesanghyuk.service;

import com.leesanghyuk.mapper.UserMapper;
import com.leesanghyuk.model.FacilityInfoDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UpdateFacility_getServiceImpl implements UpdateFacility_getService {
    @Autowired
    UserMapper usermapper;

    public FacilityInfoDTO getFacilityInfoByID(int id) {
        FacilityInfoDTO facilityInfoDTO = usermapper.getFacilityInfoByID(id);
        return facilityInfoDTO;
    }
}
