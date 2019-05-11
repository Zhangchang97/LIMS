package com.leesanghyuk.web;


import com.leesanghyuk.model.ExperimentInfoDTO;
import com.leesanghyuk.model.ExperimentRecordDTO;
import com.leesanghyuk.model.FacilityInfoDTO;
import com.leesanghyuk.model.UserLoginDTO;
import com.leesanghyuk.service.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

import java.io.UnsupportedEncodingException;
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

    @Autowired
    UpdateExperiment_upService updateexperiment_upservice;

    @Autowired
    UpdateFacility_getService updatefacility_getservice;

    @Autowired
    UpdateFacility_upService updatefacility_upservice;

    @Autowired
    AddExperimentService addexperimentservice;

    @Autowired
    AddFacilityService addfacilityservice;

    @Autowired
    DeleteExperimentService deleteexperimentservice;

    @Autowired
    DeleteFacilityService deletefacilityservice;

    @Autowired
    GetBookingsService getbookingsservice;

    @Autowired
    UpdateBookingsService updatebookingsservice;

    @Autowired
    AddExperimentRecordService addexperimentrecordservice;

    @Autowired
    GetExperimentRecordService getexperimentrecordservice;


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

        return "updateexperiment";
    }

    @RequestMapping("/updateexperiment_update")
    public String updateexperiment_update(Model model , HttpServletRequest request) throws UnsupportedEncodingException {
        request.setCharacterEncoding("UTF-8");
        int id = Integer.parseInt(request.getParameter("id"));
        String coursename = request.getParameter("coursename");
        String experimentname = request.getParameter("experimentname");
        String facility = request.getParameter("facility");
        String quantityoffacility = request.getParameter("quantityoffacility");
        String duration = request.getParameter("duration");
        String classroom = request.getParameter("classroom");
        int totalbooking = Integer.parseInt(request.getParameter("totalbooking"));

        ExperimentInfoDTO experimentInfoDTO = new ExperimentInfoDTO();
        experimentInfoDTO.setId(id);
        experimentInfoDTO.setCoursename(coursename);
        experimentInfoDTO.setExperimentname(experimentname);
        experimentInfoDTO.setFacility(facility);
        experimentInfoDTO.setQuantityoffacility(quantityoffacility);
        experimentInfoDTO.setDuration(duration);
        experimentInfoDTO.setClassroom(classroom);
        experimentInfoDTO.setTotalbooking(totalbooking);
        System.out.println(experimentname+coursename+ "   "+totalbooking+"  ");

        updateexperiment_upservice.updateExperimentInfo_up(experimentInfoDTO);

        List<ExperimentInfoDTO> experimentInfoDTOList = getexperimentinfoservice.getExperimentInfo();
        model.addAttribute("experimentinfo",experimentInfoDTOList);

        List<FacilityInfoDTO> facilityInfoDTOList = getfacilityinfoservice.getFacilityInfo();
        model.addAttribute("facilityinfo",facilityInfoDTOList);

        return "index_teacher";
    }

    @RequestMapping("/updatefacility")
    public String updatefacility(Model model , HttpServletRequest request) {
        String id = request.getParameter("id");
        System.out.println("需要更新的实验仪器的id="+id);
        FacilityInfoDTO facilityInfoDTO = updatefacility_getservice.getFacilityInfoByID(Integer.parseInt(id));
        model.addAttribute("facilityinfo",facilityInfoDTO);
        return "updatefacility";
    }

    @RequestMapping("/updatefacility_update")
    public String updatefacility_update(Model model , HttpServletRequest request) throws UnsupportedEncodingException {
        request.setCharacterEncoding("UTF-8");
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String level = request.getParameter("level");
        int totalbooking = Integer.parseInt(request.getParameter("totalbooking"));

        FacilityInfoDTO facilityInfoDTO = new FacilityInfoDTO();
        facilityInfoDTO.setId(id);
        facilityInfoDTO.setName(name);
        facilityInfoDTO.setLevel(level);
        facilityInfoDTO.setTotalbooking(totalbooking);

        updatefacility_upservice.updateFacilityInfo(facilityInfoDTO);

        List<ExperimentInfoDTO> experimentInfoDTOList = getexperimentinfoservice.getExperimentInfo();
        model.addAttribute("experimentinfo",experimentInfoDTOList);

        List<FacilityInfoDTO> facilityInfoDTOList = getfacilityinfoservice.getFacilityInfo();
        model.addAttribute("facilityinfo",facilityInfoDTOList);

        return "index_teacher";
    }

    @RequestMapping("/addexperiment")
    public String addexperiment(Model model) {
        return "addexperiment";
    }


    @RequestMapping("/addexperiment_add")
    public String addexperiment_add(Model model , HttpServletRequest request) throws UnsupportedEncodingException {
        request.setCharacterEncoding("UTF-8");
        String coursename = request.getParameter("coursename");
        String experimentname =request.getParameter("experimentname");
        String facility = request.getParameter("facility");
        String quantityoffacility = request.getParameter("quantityoffacility");
        String duration = request.getParameter("duration");
        String classroom = request.getParameter("classroom");
        int totalbooking = Integer.parseInt(request.getParameter("totalbooking"));

        ExperimentInfoDTO experimentInfoDTO = new ExperimentInfoDTO();
        experimentInfoDTO.setCoursename(coursename);
        experimentInfoDTO.setExperimentname(experimentname);
        experimentInfoDTO.setFacility(facility);
        experimentInfoDTO.setQuantityoffacility(quantityoffacility);
        experimentInfoDTO.setDuration(duration);
        experimentInfoDTO.setClassroom(classroom);
        experimentInfoDTO.setTotalbooking(totalbooking);

        addexperimentservice.addExperiment(experimentInfoDTO);

        List<ExperimentInfoDTO> experimentInfoDTOList = getexperimentinfoservice.getExperimentInfo();
        model.addAttribute("experimentinfo",experimentInfoDTOList);

        List<FacilityInfoDTO> facilityInfoDTOList = getfacilityinfoservice.getFacilityInfo();
        model.addAttribute("facilityinfo",facilityInfoDTOList);

        return "index_teacher";
    }

    @RequestMapping("/addfacility")
    public String addfacility(Model model) {
        return "addfacility";
    }

    @RequestMapping("/addfacility_add")
    public String addfacility_add(Model model , HttpServletRequest request) throws UnsupportedEncodingException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String level = request.getParameter("level");
        int totalbooking = Integer.parseInt(request.getParameter("totalbooking"));

        FacilityInfoDTO facilityInfoDTO = new FacilityInfoDTO();
        facilityInfoDTO.setName(name);
        facilityInfoDTO.setLevel(level);
        facilityInfoDTO.setTotalbooking(totalbooking);

        addfacilityservice.addFacility(facilityInfoDTO);

        List<ExperimentInfoDTO> experimentInfoDTOList = getexperimentinfoservice.getExperimentInfo();
        model.addAttribute("experimentinfo",experimentInfoDTOList);

        List<FacilityInfoDTO> facilityInfoDTOList = getfacilityinfoservice.getFacilityInfo();
        model.addAttribute("facilityinfo",facilityInfoDTOList);

        return "index_teacher";
    }

    @RequestMapping("/deleteexperiment")
    public String deleteexperiment(Model model , HttpServletRequest request) {
        String id = request.getParameter("id");
        System.out.println("要删除的实验课程的id="+id);
        deleteexperimentservice.deleteExperiment(Integer.parseInt(id));

        List<ExperimentInfoDTO> experimentInfoDTOList = getexperimentinfoservice.getExperimentInfo();
        model.addAttribute("experimentinfo",experimentInfoDTOList);

        List<FacilityInfoDTO> facilityInfoDTOList = getfacilityinfoservice.getFacilityInfo();
        model.addAttribute("facilityinfo",facilityInfoDTOList);

        return "index_teacher";
    }

    @RequestMapping("/deletefacility")
    public String deletefacility(Model model , HttpServletRequest request) {
        String id = request.getParameter("id");
        deletefacilityservice.deleteFacility(Integer.parseInt(id));

        List<ExperimentInfoDTO> experimentInfoDTOList = getexperimentinfoservice.getExperimentInfo();
        model.addAttribute("experimentinfo",experimentInfoDTOList);

        List<FacilityInfoDTO> facilityInfoDTOList = getfacilityinfoservice.getFacilityInfo();
        model.addAttribute("facilityinfo",facilityInfoDTOList);

        return "index_teacher";
    }

    @RequestMapping("/experimentpage")
    public String experimentpage(Model model) {
        List<ExperimentInfoDTO> experimentInfoDTOList = getexperimentinfoservice.getExperimentInfo();
        model.addAttribute("experimentinfo",experimentInfoDTOList);
        return "experimentpage";
    }

    @RequestMapping("/experimentpage_class")
    public String experimentpage_class(Model model , HttpServletRequest request) throws UnsupportedEncodingException {
        request.setCharacterEncoding("UTF-8");
        String experimentname = request.getParameter("experimentname");
        System.out.println(experimentname);
        String coursename = request.getParameter("coursename");
        String classroom = request.getParameter("classroom");
        System.out.println(classroom);
        String bookingman = request.getParameter("bookingman");
        String time = request.getParameter("time");
        int bookingnumber = Integer.parseInt(request.getParameter("bookingnumber"));
        System.out.println(bookingnumber);

        ExperimentRecordDTO experimentRecordDTO = new ExperimentRecordDTO();
        experimentRecordDTO.setCoursename(coursename);
        experimentRecordDTO.setExperimentname(experimentname);
        experimentRecordDTO.setClassroom(classroom);
        experimentRecordDTO.setBookingman(bookingman);
        experimentRecordDTO.setBookingnumber(bookingnumber);
        experimentRecordDTO.setTime(time);

        addexperimentrecordservice.addExperimentRecord(experimentRecordDTO);

        ExperimentInfoDTO experimentInfoDTO = new ExperimentInfoDTO();
        experimentInfoDTO.setExperimentname(experimentname);
        experimentInfoDTO.setClassroom(classroom);

        int bookings = getbookingsservice.getBookings(experimentInfoDTO);

        if (bookings < 1){
            return "errorpage";
        }else {
            bookings = bookings - bookingnumber;
            System.out.println(bookings);
            ExperimentInfoDTO experimentInfoDTO1 = new ExperimentInfoDTO();
            experimentInfoDTO1.setExperimentname(experimentname);
            experimentInfoDTO1.setClassroom(classroom);
            experimentInfoDTO1.setBookings(bookings);
            updatebookingsservice.updateBookings(experimentInfoDTO1);

            return "recordpage";
        }
    }



    @RequestMapping("/instrumentpage")
    public String instrumentpage(Model model) {
        List<FacilityInfoDTO> facilityInfoDTOList = getfacilityinfoservice.getFacilityInfo();
        model.addAttribute("facilityinfo",facilityInfoDTOList);
        return "instrumentpage";
    }
    @RequestMapping("/recordpage")
    public String recordpage(Model model) {
        List<ExperimentRecordDTO> experimentRecordDTOList = getexperimentrecordservice.getExperimentRecord();
        model.addAttribute("experimentrecord",experimentRecordDTOList);
        return "recordpage";
    }
}
