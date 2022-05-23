package com.example.ai_interview.Controller;


import org.hibernate.type.TrueFalseType;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;

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

        // 사용자 정보 전달 (Model에서 사용자 정보 가져온다는 것을 가정)
        String name = "손홍일";
        String id = "sonhl7626";

        mv.addObject("userName",name);
        mv.addObject("userId",id);

        // 주어질 instance 예시로 정의 (Model 에서 DB에 접근해 정보를 들고온다는 것을 가정)
        List<String> fstTask = new ArrayList<>();
        fstTask.add("기계공학과");
        fstTask.add("컴퓨터공학과");
        List<String> sndTask = new ArrayList<>();
        sndTask.add("AI 프로그래머");
        sndTask.add("모바일 프로그래머");

        mv.addObject("fstTask",fstTask);
        mv.addObject("sndTask",sndTask);

        mv.addObject("selectTaskTag","It is tag Introduction");
        mv.setViewName("selectTask");
        return mv;
    }

    @RequestMapping(value = "sendSelectedTasks.do", method = RequestMethod.POST)
    public String sendSelectedTasks(
            @RequestParam("fstMajor") String fstMajor,
            @RequestParam("sndMajor") String sndMajor
    ){
        System.out.println("Selected Task is " + fstMajor + sndMajor);
        return "redirect:/introduction";
    }

}
