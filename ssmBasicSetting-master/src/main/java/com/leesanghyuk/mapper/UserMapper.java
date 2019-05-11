package com.leesanghyuk.mapper;


import com.leesanghyuk.model.*;
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

    //updateexperiment页面，将更改后的实验课程信息存入数据库，对数据库进行更新
    void updateExperimentInfo(ExperimentInfoDTO experimentinfodto);

    //updateexperiment页面，将实验课程删除
    void  deleteExperiment(int id);

    //updatefacility页面，取对应ID的实验仪器信息
    FacilityInfoDTO getFacilityInfoByID(int id);

    //updatefacility页面，将更改后的实验仪器信息存入数据库，对数据库进行更新
    void updateFacilityInfo(FacilityInfoDTO facilityinfodto);

    //updatefacility页面，将实验仪器删除
    void  deleteFacility(int id);

    //addexperiment页面，新增实验课程
    void addExperiment(ExperimentInfoDTO experimentInfoDTO);

    //addfacility页面，新增实验仪器
    void addFacility(FacilityInfoDTO facilityInfoDTO);

    //预约操作，根据coursename和classroom取数据
    int getbookings(ExperimentInfoDTO experimentInfoDTO);

    //预约操作，根据coursename和classroom更新bookings数据
    void updatebookings(ExperimentInfoDTO experimentInfoDTO);

    //预约操纵，将预约的实验课程信息存入实验课程记录表中
    void addExperimentRecord(ExperimentRecordDTO experimentRecordDTO);

    //预约操作，将实验课程记录表中的信息在记录页面取出来显示
    List<ExperimentRecordDTO> getExperimentRecord();

    //预约操作,将预约的实验仪器信息存入实验仪器记录表中
    void addFacilityRecord(FacilityRecordDTO facilityRecordDTO);

    //预约操作，根据name取数据
    int getBooking(FacilityInfoDTO facilityInfoDTO);

    //预约操作，根据name将数据更新
    void updateBooking(FacilityInfoDTO facilityInfoDTO);

    //预约操作，将预约的实验仪器信息取出
    List<FacilityRecordDTO> getFacilityRecord();
}
