package com.example.ai_interview.Controller;


import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
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

    @PostMapping("/interview")
    public ModelAndView interview(Model model, String ans) {

        System.out.println(ans);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("interview");

        return mv;
    }
    @GetMapping("/interview")
    public ModelAndView interview() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("interview");

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
}
