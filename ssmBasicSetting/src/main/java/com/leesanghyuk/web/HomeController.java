package com.leesanghyuk.web;


import com.leesanghyuk.model.UserLoginDTO;
import com.leesanghyuk.service.UserLogin;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@Controller
@RequestMapping(value={"/"})
public class HomeController {
    public static Logger logger= LoggerFactory.getLogger(HomeController.class);

    @Autowired
    UserLogin userlogin;

    @RequestMapping(value = "/login" , method = RequestMethod.GET)
    public String Login(Model model, HttpServletRequest request ) {
        String username = request.getParameter("username");

        logger.error(username + "!!!!!!!!");

        String password = request.getParameter("password");

        UserLoginDTO userlogindto = new UserLoginDTO();
        userlogindto.setUsername(username);
        userlogindto.setPassword(password);

        userlogin.LoginCheck(userlogindto);

        return "login";
    }
    @RequestMapping("/index")
    public String test(Model l) {
        return "index";
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
