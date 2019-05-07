package com.leesanghyuk.service;

import com.leesanghyuk.mapper.UserMapper;
import com.leesanghyuk.model.UserLoginDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserLoginServiceImpl implements UserLoginService {
    @Autowired
    UserMapper usermapper;

    @Override
    public String LoginCheck(UserLoginDTO userlogindto) {
          return usermapper.UserLoginCheckLevel(userlogindto);
    }

}