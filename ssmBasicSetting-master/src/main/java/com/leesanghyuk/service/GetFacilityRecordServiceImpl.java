package com.leesanghyuk.service;

import com.leesanghyuk.mapper.UserMapper;
import com.leesanghyuk.model.FacilityRecordDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GetFacilityRecordServiceImpl implements GetFacilityRecordService {
    @Autowired
    UserMapper usermapper;

    public List<FacilityRecordDTO> getFacilityRecord() {
        List<FacilityRecordDTO> facilityRecordDTOList = usermapper.getFacilityRecord();
        return facilityRecordDTOList;
    }
}
