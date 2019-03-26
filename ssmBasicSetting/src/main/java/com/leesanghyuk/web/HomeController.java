package com.leesanghyuk.web;


import com.leesanghyuk.mapper.MusicMapper;
import com.leesanghyuk.model.Music;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value={"/","/homepage"})
public class HomeController {
    @Autowired
    private MusicMapper musicMapper_auto;

    @RequestMapping(method = RequestMethod.GET)
    public String home(Model model){

        Music music1=musicMapper_auto.selectMusicById(2);
        model.addAttribute("message","Bounjour Mondo!"+music1.getTitle());
        return "index";
    }
}
