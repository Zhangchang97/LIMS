package com.leesanghyuk.web;


import com.leesanghyuk.mapper.UserMapper;
import com.leesanghyuk.model.ExperimentInfoDTO;
import com.leesanghyuk.model.UserLoginDTO;
import com.leesanghyuk.service.GetExperimentInfoService;
import com.leesanghyuk.service.UserLoginService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.inject.Qualifier;
import javax.servlet.http.HttpServletRequest;

import java.util.List;

import static sun.awt.geom.Crossings.debug;


@Controller
@RequestMapping(value={"/"})
public class HomeController {
    public static Logger logger= LoggerFactory.getLogger(HomeController.class);

    @Autowired
    UserLoginService userloginservice;

    @Autowired
    GetExperimentInfoService getexperimentinfoservice;

    @RequestMapping()
    public String Login(HttpServletRequest request){
        return "login";
    }

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


    @RequestMapping("/index")
    public String index(Model model) {
        List<ExperimentInfoDTO> experimentInfoDTOList = getexperimentinfoservice.getExperimentInfo();
        logger.debug("已经将数据取到experimenInfoDTOList中");
        model.addAttribute("experimentinfo",experimentInfoDTOList);
        System.out.println(experimentInfoDTOList.size());
        return "index";
    }

    @RequestMapping("/index_teacher")
    public String index_teacher(Model l) {
        return "index_teacher";
    }

    @RequestMapping("/index_teacher_update")
    public String index_teacher_update(Model model){

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
