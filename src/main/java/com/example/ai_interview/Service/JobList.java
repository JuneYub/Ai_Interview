package com.example.ai_interview.Service;

import com.example.ai_interview.Model.firstjob;
import com.example.ai_interview.Repository.JobRepository;

import com.example.ai_interview.Repository.SecondJobRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;


@Service
public class JobList {

    @Autowired
    private JobRepository jobRepository;

    public List<firstjob> firstJobList()
    {
        return jobRepository.findAll();
    }

    @Autowired
    private SecondJobRepository secondJobRepository;

    public LinkedHashMap<String, Object> secondjobList() {
        LinkedHashMap<String, Object > jobList= new LinkedHashMap<>();
        jobList.put("경영사무",secondJobRepository.sndJobList0());
        jobList.put("마케팅 광고 홍보", secondJobRepository.sndJobList1());
        jobList.put("IT 인터넷",secondJobRepository.sndJobList2());
        jobList.put("디자인",secondJobRepository.sndJobList3());
        jobList.put("무역 유통",secondJobRepository.sndJobList4());
        jobList.put("생산 제조",secondJobRepository.sndJobList5());
        jobList.put("건설",secondJobRepository.sndJobList6());
        jobList.put("의료",secondJobRepository.sndJobList7());
        jobList.put("미디어",secondJobRepository.sndJobList8());
        return jobList;
    }

}
