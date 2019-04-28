package com.leesanghyuk.mapper;

import com.leesanghyuk.model.UserLoginDTO;
import org.springframework.stereotype.Component;

@Component
public interface UserMapper {
//    public String UserLoginCheck(UserLoginDTO userlogindto);
    public String  UserLoginCheckLevel(UserLoginDTO userlogindto);
}
