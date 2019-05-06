package com.leesanghyuk.mapper;


import com.leesanghyuk.model.ExperimentInfoDTO;
import com.leesanghyuk.model.UserLoginDTO;
import org.springframework.stereotype.Component;
import java.util.List;

@Component
public interface UserMapper {
    //登录页面去后端取数据
    public String  UserLoginCheckLevel(UserLoginDTO userlogindto);
    //index页面，取出实验课程信息
    List<ExperimentInfoDTO> getExperimentInfo();
}
