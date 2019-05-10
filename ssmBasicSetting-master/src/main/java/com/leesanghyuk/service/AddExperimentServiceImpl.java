package com.leesanghyuk.service;

import com.leesanghyuk.mapper.UserMapper;
import com.leesanghyuk.model.ExperimentInfoDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AddExperimentServiceImpl implements AddExperimentService {
    @Autowired
    UserMapper usermapper;

    public void addExperiment(ExperimentInfoDTO experimentInfoDTO) {
        usermapper.addExperiment(experimentInfoDTO);
    }
}
