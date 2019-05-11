package com.leesanghyuk.service;

import com.leesanghyuk.mapper.UserMapper;
import com.leesanghyuk.model.ExperimentRecordDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.xml.ws.Action;
import java.util.List;

@Service
public class GetExperimentRecordServiceImpl implements GetExperimentRecordService {
    @Autowired
    UserMapper usermapper;

    public List<ExperimentRecordDTO> getExperimentRecord() {
        List<ExperimentRecordDTO> experimentRecordDTOList = usermapper.getExperimentRecord();
        return experimentRecordDTOList;
    }
}
