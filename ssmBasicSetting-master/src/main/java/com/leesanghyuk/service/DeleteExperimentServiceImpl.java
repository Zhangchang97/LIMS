package com.leesanghyuk.service;

import com.leesanghyuk.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DeleteExperimentServiceImpl implements  DeleteExperimentService {
    @Autowired
    UserMapper usermapper;

    public void deleteExperiment(int id) {
        usermapper.deleteExperiment(id);
    }
}
