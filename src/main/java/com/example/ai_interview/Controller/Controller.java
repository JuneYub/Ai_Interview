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

    // 인터뷰 페이지로 넘어갈때 post로 바꾸고
    // 값들 넘어오는지 확인
    @RequestMapping(value = "/interview",method = RequestMethod.POST)
    public ModelAndView interview(Model model, String firstJob, String secondJob, introductionDto introDto) {
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

    @RequestMapping(value ="/introduction", method = RequestMethod.POST)
    public ModelAndView introduction(Model model, String firstJob, String secondJob, introductionDto introDto) {
        // jsp파일 res를 위함
        ModelAndView mv = new ModelAndView();
        mv.addObject("firstJob", firstJob);
        mv.addObject("secondJob", secondJob);
        mv.setViewName("introduction");

        return mv;
    }

    @RequestMapping(value = "introductionSend.do", method = RequestMethod.POST)
    public ModelAndView introductionSend(Model model, String firstAns, String secondAns, String firstJob, String secondJob, introductionDto introDto) {
        introDto.setFirstAns(firstAns);
        introDto.setSecondAns(secondAns);

        System.out.println(firstJob);

        ModelAndView mv = new ModelAndView();
        mv.addObject("introFirst", introDto.getFirstAns());
        mv.addObject("introSecond", introDto.getSecondAns());
        mv.addObject("firstJob", firstJob);
        mv.addObject("secondJob", secondJob);

        if (firstAns.length() < 300 || secondAns.length() < 300) {
            // 글자 수 미달
            System.out.println("300자 이상 작성해주세요.");
            mv.setViewName("introduction");

            return mv;
        }

//        System.out.println(introDto.getFirstAns());
//        System.out.println(introDto.getSecondAns());
        mv.setViewName("interview");

        return mv;

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


        mv.addObject("firstJobList", firstJobList);
        mv.addObject("secondJobList", jsonObject);


        mv.addObject("selectTaskTag", "It is tag Introduction");
        mv.setViewName("selectTask");

        return mv;
    }

    @RequestMapping(value = "sendSelectedTasks.do", method = RequestMethod.POST)
    public ModelAndView sendSelectedTasks(
            @RequestParam("fstMajor") String fstMajor,
            @RequestParam("sndMajor") String sndMajor
    ) {
        System.out.println("Selected Task is " + fstMajor + sndMajor);
        ModelAndView mv = new ModelAndView();
        mv.addObject("introFirst", "");
        mv.addObject("introSecond", "");
        mv.addObject("firstJob", fstMajor);
        mv.addObject("secondJob", sndMajor);
        mv.setViewName("introduction");
        return mv;
    }

}
