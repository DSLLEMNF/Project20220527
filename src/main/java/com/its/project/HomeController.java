package com.its.project;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    @GetMapping("/")
    public String index(){
        return "index";
    }
    @GetMapping("/memberPage/page")
    public String page(){
        return "memberPage/page";
    }
    @GetMapping("/shopPage/news")
    public String news(){
        return "shopPage/news";
    }
    @GetMapping("/shopPage/men")
    public String men(){
        return "shopPage/men";
    }
    @GetMapping("shopPage/product")
    public String product(){
        return  "shopPage/product";
    }
}
