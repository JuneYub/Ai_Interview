package com.example.ai_interview.Controller;


import com.example.ai_interview.Repository.JobRepository;
import com.example.ai_interview.Repository.SecondJobRepository;
import com.example.ai_interview.Service.JobList;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;

import com.example.ai_interview.Model.introductionDto;

import javax.servlet.http.HttpServletRequest;

@org.springframework.stereotype.Controller
public class Controller {

    @RequestMapping("/index")
    public ModelAndView index() {
        // jsp파일 res를 위함
        ModelAndView mv = new ModelAndView();
        mv.addObject("testTag", "It is tag Test");
        mv.setViewName("test");

        return mv;
    }

    //    @PostMapping(value = "/requestQuestion", produces="text/plain")
//    public String interview(Model model, String ans) {
//        System.out.println(ans);
//
//        return ans;
//    }
    @PostMapping(value = "/requestQuestion", produces = "text/plain")
    @ResponseBody
    public String interview(@RequestBody String ans) {
        System.out.println(ans);

        return ans;
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
        mv.addObject("mainTag", "It is tag Main");
        mv.setViewName("main");

        return mv;
    }

    @RequestMapping("/introduction")
    public ModelAndView introduction() {
        // jsp파일 res를 위함
        ModelAndView mv = new ModelAndView();
        mv.addObject("introductionTag", "It is tag Introduction");
        mv.setViewName("introduction");

        return mv;
    }

    @RequestMapping(value = "introductionSend.do", method = RequestMethod.POST)
    public String introductionSend(Model model, String firstAns, String secondAns, introductionDto introDto) {
        boolean firstAnsFlag = true;
        boolean secondAnsFlag = true;
        if (firstAns.length() < 300) {
            firstAnsFlag = false;
        } else {
            introDto.setFirstAns(firstAns);
        }

        if (secondAns.length() < 300) {
            secondAnsFlag = false;
        } else {
            introDto.setSecondAns(secondAns);
        }

        if (firstAnsFlag && secondAnsFlag) {
            System.out.println(introDto.getFirstAns());
            System.out.println(introDto.getSecondAns());

            return "redirect:/introduction";
        } else {
            System.out.println("300자 이상 작성해주세요.");

            return "redirect:/introduction";
        }
    }


    @Autowired
    private JobList jobList;

    @Autowired
    private JobRepository jobRepository;

    @Autowired
    private SecondJobRepository secondJobRepository;


    @RequestMapping("/selectTask")
    public ModelAndView selectTask(Model model) {

        // jsp파일 res를 위함
        ModelAndView mv = new ModelAndView();

        List<String> firstJobList = jobRepository.jobListAll();
        LinkedHashMap<String, Object> secondJobList = jobList.secondjobList();
        JSONObject jsonObject = new JSONObject(secondJobList);


        // 사용자 정보 전달 (Model에서 사용자 정보 가져온다는 것을 가정)
        String name = "손홍일";
        String id = "sonhl7626";

        mv.addObject("userName", name);
        mv.addObject("userId", id);


        mv.addObject("firstJobList",firstJobList);
        mv.addObject("secondJobList",jsonObject);


        mv.addObject("selectTaskTag", "It is tag Introduction");
        mv.setViewName("selectTask");

        return mv;
    }

    @RequestMapping(value = "sendSelectedTasks.do", method = RequestMethod.POST)
    public String sendSelectedTasks(
            @RequestParam("fstMajor") String fstMajor,
            @RequestParam("sndMajor") String sndMajor
    ) {
        System.out.println("Selected Task is " + fstMajor + sndMajor);
        return "redirect:/introduction";
    }

    @RequestMapping("/result")
    public ModelAndView result() {
        // jsp파일 res를 위함
        ModelAndView mv = new ModelAndView();
        mv.addObject("resultTag", "It is tag result");
        mv.setViewName("result");

        return mv;
    }

}
