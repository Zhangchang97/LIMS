package com.leesanghyuk.service;

import com.leesanghyuk.mapper.UserMapper;
import com.leesanghyuk.model.FacilityInfoDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("getfacilityinfoservice")
public class GetFacilityInfoServiceImpl implements GetFacilityInfoService{
    @Autowired
    UserMapper usermapper;

    public List<FacilityInfoDTO> getFacilityInfo(){
        List<FacilityInfoDTO> facilityInfoDTOList = usermapper.getFacilityInfo();
        return facilityInfoDTOList;
    }
}
