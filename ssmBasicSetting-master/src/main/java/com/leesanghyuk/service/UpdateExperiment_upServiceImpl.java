package com.leesanghyuk.service;

import com.leesanghyuk.mapper.UserMapper;
import com.leesanghyuk.model.ExperimentInfoDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UpdateExperiment_upServiceImpl implements UpdateExperiment_upService {
    @Autowired
    UserMapper usermapper;
    public void updateExperimentInfo_up(ExperimentInfoDTO experimentinfodto){
        usermapper.updateExperimentInfo(experimentinfodto);
    }
}
