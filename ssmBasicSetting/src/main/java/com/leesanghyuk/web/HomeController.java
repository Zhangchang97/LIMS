package com.leesanghyuk.web;


import com.leesanghyuk.model.Music;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value={"/","/homepage"})
public class HomeController {
//    @Autowired
//    private MusicMapper musicMapper_auto;

    @RequestMapping(method = RequestMethod.GET)
    public String home(Model model){

//        Music music1=musicMapper_auto.selectMusicById(2);
//        model.addAttribute("message","Bounjour Mondo!"+music1.getTitle());
        model.addAttribute("name", "zhang" );
        return "index";
    }
    @RequestMapping("/test")
    public String test(Model l) {
//        l.addAttribute("sex", "man");
        Music m = new Music();
//        Apple a = new Apple();
        m.setId("a");
        m.setTitle("b");
        l.addAttribute("music", m);
        return "experimentBookingPage";
    }
}
