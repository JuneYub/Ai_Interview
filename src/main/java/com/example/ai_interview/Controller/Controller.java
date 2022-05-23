package com.example.ai_interview.Controller;


import org.hibernate.type.TrueFalseType;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import com.example.ai_interview.Model.introductionDto;

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

    @RequestMapping(value = "introductionSend.do", method = RequestMethod.POST)
    public String introductionSend(Model model, String firstAns, String secondAns, introductionDto introDto) {
        boolean firstAnsFlag = true;
        boolean secondAnsFlag = true;
        if (firstAns.length() < 300){
            firstAnsFlag = false;
        }
        else {
            introDto.setFirstAns(firstAns);
        }

        if (secondAns.length() < 300){
            secondAnsFlag = false;
        }
        else {
            introDto.setSecondAns(secondAns);
        }

        if (firstAnsFlag && secondAnsFlag){
            System.out.println(introDto.getFirstAns());
            System.out.println(introDto.getSecondAns());

            return "redirect:/introduction";
        }
        else {
            System.out.println("300자 이상 작성해주세요.");

            return "redirect:/introduction";
        }
    }

    @RequestMapping("/selectTask")
    public ModelAndView selectTask() {
        // jsp파일 res를 위함
        ModelAndView mv = new ModelAndView();
        mv.addObject("selectTaskTag","It is tag Introduction");
        mv.setViewName("selectTask");

        return mv;
    }
}
