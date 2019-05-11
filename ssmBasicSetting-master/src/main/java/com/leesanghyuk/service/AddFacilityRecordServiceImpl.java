package com.leesanghyuk.service;

import com.leesanghyuk.mapper.UserMapper;
import com.leesanghyuk.model.FacilityRecordDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AddFacilityRecordServiceImpl implements AddFacilityRecordService {
    @Autowired
    UserMapper usermapper;
    public void addFacilityRecord(FacilityRecordDTO facilityRecordDTO) {
        usermapper.addFacilityRecord(facilityRecordDTO);
    }
}
