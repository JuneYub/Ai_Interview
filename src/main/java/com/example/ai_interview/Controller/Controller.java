package com.example.ai_interview.Controller;


import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

@org.springframework.stereotype.Controller
public class Controller {

    @RequestMapping("/index")
    public ModelAndView index() {
        // jsp파일 res를 위함
        ModelAndView mv = new ModelAndView();
        mv.addObject("testTag","It is tag Test");
        mv.setViewName("test");

        return mv;
    }

    @RequestMapping("/main")
    public ModelAndView main() {
        // jsp파일 res를 위함
        ModelAndView mv = new ModelAndView();
        mv.addObject("mainTag","It is tag Main");
        mv.setViewName("main");

        return mv;
    }

    @RequestMapping("/introduction")
    public ModelAndView introduction() {
        // jsp파일 res를 위함
        ModelAndView mv = new ModelAndView();
        mv.addObject("introductionTag","It is tag Introduction");
        mv.setViewName("introduction");

        return mv;
    }

    @RequestMapping("/checkEquip")
    public ModelAndView checkEquip() {
        ModelAndView mv = new ModelAndView();
        mv.addObject("checkEquipTag","It is tag checkEquip");
        mv.setViewName("checkEquip");

        

        return mv;
    }
}
