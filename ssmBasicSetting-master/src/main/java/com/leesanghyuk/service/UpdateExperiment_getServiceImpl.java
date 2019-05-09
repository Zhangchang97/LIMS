package com.leesanghyuk.service;

import com.leesanghyuk.mapper.UserMapper;
import com.leesanghyuk.model.ExperimentInfoDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("updateexperimentservice")
public class UpdateExperiment_getServiceImpl implements UpdateExperiment_getService {
    @Autowired
    UserMapper usermapper;

    public ExperimentInfoDTO getgetExperimentInfoByID(int id){
        ExperimentInfoDTO experimentInfoDTO = usermapper.getExperimentInfoByID(id);
        return experimentInfoDTO;
    }
}
