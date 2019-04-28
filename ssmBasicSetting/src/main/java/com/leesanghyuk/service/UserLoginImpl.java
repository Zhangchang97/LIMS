package com.leesanghyuk.service;

import com.leesanghyuk.mapper.UserMapper;
import com.leesanghyuk.model.UserLoginDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Service
public class UserLoginImpl implements UserLogin {
    @Autowired
    UserMapper usermapper;

    @Override
    public String LoginCheck(UserLoginDTO userlogindto) {
        String level = usermapper.UserLoginCheckLevel(userlogindto);
        if (level.isEmpty()){
            return "redirect:/login";
        }
        else {
            if (level == "1"){
                return "redirect:/index_teacher.jsp";
            }
            else {
                return "redirect:/index.jsp";
            }
        }
    }
}