package com.zipbop.purchase.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController2 {

    @RequestMapping("/home")
    public String home() {
        return "purchase/home";
    }
}
