package com.leesanghyuk.mapper;


import com.leesanghyuk.model.ExperimentInfoDTO;
import com.leesanghyuk.model.FacilityInfoDTO;
import com.leesanghyuk.model.UserLoginDTO;
import org.springframework.stereotype.Component;
import java.util.List;

@Component
public interface UserMapper {
    //登录页面，取后端数据
    public String  UserLoginCheckLevel(UserLoginDTO userlogindto);

    //index页面，取出实验课程信息
    List<ExperimentInfoDTO> getExperimentInfo();

    //index页面，取出实验仪器信息
    List<FacilityInfoDTO> getFacilityInfo();

    //updateexperiment页面，取对应ID的实验课程信息
    ExperimentInfoDTO getExperimentInfoByID(int id);

    //updateexperiment_update页面，将更改后的实验课程信息存入数据库，对数据库进行更新
    void updateExperimentInfo(ExperimentInfoDTO experimentinfodto);
}
