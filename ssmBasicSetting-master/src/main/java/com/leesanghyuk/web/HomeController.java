package com.leesanghyuk.web;


import com.leesanghyuk.model.ExperimentInfoDTO;
import com.leesanghyuk.model.FacilityInfoDTO;
import com.leesanghyuk.model.UserLoginDTO;
import com.leesanghyuk.service.GetExperimentInfoService;
import com.leesanghyuk.service.GetFacilityInfoService;
import com.leesanghyuk.service.UpdateExperiment_getService;
import com.leesanghyuk.service.UserLoginService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

import java.util.List;


@Controller
@RequestMapping(value={"/"})
public class HomeController {
    public static Logger logger= LoggerFactory.getLogger(HomeController.class);

    @Autowired
    UserLoginService userloginservice;

    @Autowired
    GetExperimentInfoService getexperimentinfoservice;

    @Autowired
    GetFacilityInfoService getfacilityinfoservice;

    @Autowired
    UpdateExperiment_getService updateexperiment_getservice;

    @RequestMapping()
    public String Login(HttpServletRequest request){
        return "login";
    }

    //登录页面处理
    @RequestMapping(value = "/login" , method = RequestMethod.POST)
    public String Loginsuccess(Model model, HttpServletRequest request ) {
        String username = request.getParameter("username");
        logger.debug(username + "!!!!!!!!");
        String password = request.getParameter("password");

        UserLoginDTO userlogindto = new UserLoginDTO();
        userlogindto.setUsername(username);
        userlogindto.setPassword(password);

        String level = userloginservice.LoginCheck(userlogindto);
        logger.debug("已经将level取出来了，接下来进行判断");
        if (level.isEmpty()){
            return "login";
        }
        else if (level.equalsIgnoreCase("1")){
            return "index_teacher";
        }else if (level.equalsIgnoreCase("0")){
            return "index";
        }else {
            return "error";
        }
    }

    //学生主页
    @RequestMapping("/index")
    public String index(Model model) {
        //取出实验课程数据填入表格中
        List<ExperimentInfoDTO> experimentInfoDTOList = getexperimentinfoservice.getExperimentInfo();
        logger.debug("已经将数据取到experimenInfoDTOList中");
        model.addAttribute("experimentinfo",experimentInfoDTOList);
        System.out.println(experimentInfoDTOList.size()+"已经将实验课程数据取出来了!!!");

        //取出实验仪器数据填入表格中
        List<FacilityInfoDTO> facilityInfoDTOList = getfacilityinfoservice.getFacilityInfo();
        model.addAttribute("facilityinfo",facilityInfoDTOList);
        for (int i = 0; i < 5; i++){
        System.out.println("已经将实验仪器数据取出来了!!!"+facilityInfoDTOList.get(i).getName());
        System.out.println(facilityInfoDTOList.get(i).getLevel());
        }
        return "index";
    }

    //教师主页
    @RequestMapping("/index_teacher")
    public String index_teacher(Model model) {
        //取出实验课程数据填入表格中
        List<ExperimentInfoDTO> experimentInfoDTOList = getexperimentinfoservice.getExperimentInfo();
        logger.debug("已经将数据取到experimenInfoDTOList中");
        model.addAttribute("experimentinfo",experimentInfoDTOList);
        System.out.println(experimentInfoDTOList.size()+"已经将实验课程数据取出来了!!!");

        //取出实验仪器数据填入表格中
        List<FacilityInfoDTO> facilityInfoDTOList = getfacilityinfoservice.getFacilityInfo();
        model.addAttribute("facilityinfo",facilityInfoDTOList);
        for (int i = 0; i < 5; i++){
            System.out.println("已经将实验仪器数据取出来了!!!"+facilityInfoDTOList.get(i).getName());
            System.out.println(facilityInfoDTOList.get(i).getLevel());
        }
        return "index_teacher";
    }

    //教师更新实验课程页面
    @RequestMapping("/updateexperiment")
    public String updateexperiment(Model model , HttpServletRequest request) {
        String id = request.getParameter("id");
        System.out.println("需要更新的实验课程id="+id);
        //根据url中的id取到相应的实验课程的信息
        ExperimentInfoDTO experimentInfoDTO = updateexperiment_getservice.getgetExperimentInfoByID(Integer.parseInt(id));
        System.out.println(experimentInfoDTO.getCoursename());
        //将取到的实验课程信息传到前端表格中
        model.addAttribute("experimentinfo",experimentInfoDTO);

        return "updateexperiment_update";
    }

    @RequestMapping("/updateexperiment_update")
    public String updateexperiment_update(Model model , HttpServletRequest request) {
        String coursename = request.getParameter("coursename");
        String experimentname = request.getParameter("experimentname");
        String facility = request.getParameter("facility");
        String quantityoffacility = request.getParameter("quantityoffacility");
        String duration = request.getParameter("duration");
        String classroom = request.getParameter("classroom");
        int totalbooking = Integer.parseInt(request.getParameter("totalbooking"));

        ExperimentInfoDTO experimentInfoDTO = new ExperimentInfoDTO();
        experimentInfoDTO.setCoursename("coursename");
        experimentInfoDTO.setExperimentname("experimentname");
        experimentInfoDTO.setFacility("facility");
        experimentInfoDTO.setQuantityoffacility("quantityoffacility");
        experimentInfoDTO.setDuration("duration");
        experimentInfoDTO.setClassroom("classroom");
        experimentInfoDTO.setTotalbooking(Integer.parseInt("totalbooking"));
        System.out.println(coursename);
        return "index_teacher";
    }








    @RequestMapping("/experimentpage")
    public String experimentpage_class(Model ec) {
        return "experimentpage";
    }
    @RequestMapping("/instrumentpage")
    public String instrumentpage(Model i) {
        return "instrumentpage";
    }
    @RequestMapping("/recordpage")
    public String recordpage(Model r) {
        return "recordpage";
    }
}
