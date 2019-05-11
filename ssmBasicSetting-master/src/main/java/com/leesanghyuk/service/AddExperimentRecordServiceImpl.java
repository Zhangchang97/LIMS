package com.leesanghyuk.service;

import com.leesanghyuk.mapper.UserMapper;
import com.leesanghyuk.model.ExperimentRecordDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AddExperimentRecordServiceImpl implements AddExperimentRecordService {
    @Autowired
    UserMapper usermapper;

    public void addExperimentRecord(ExperimentRecordDTO experimentRecordDTO) {
        usermapper.addExperimentRecord(experimentRecordDTO);
    }
}
