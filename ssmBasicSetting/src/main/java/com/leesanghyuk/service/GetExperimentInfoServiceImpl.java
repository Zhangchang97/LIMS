package com.leesanghyuk.service;

import com.leesanghyuk.mapper.UserMapper;
import com.leesanghyuk.model.ExperimentInfoDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("getexperimentinfoservice")
public class GetExperimentInfoServiceImpl implements GetExperimentInfoService{
    @Autowired
    UserMapper usermapper;

    public List<ExperimentInfoDTO> getExperimentInfo() {
        List<ExperimentInfoDTO> experimentInfoDTOList =usermapper.getExperimentInfo();
        return experimentInfoDTOList;
    }

}
