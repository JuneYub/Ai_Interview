package com.example.ai_interview.Service;

import com.example.ai_interview.Model.firstjob;
import com.example.ai_interview.Model.secondjob;
import com.example.ai_interview.Repository.JobRepository;

import com.example.ai_interview.Repository.SecondJobRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class JobList {

    @Autowired
    private JobRepository jobRepository;

    public List<firstjob> firstJobList(){
        return jobRepository.findAll();
    }

    @Autowired
    private SecondJobRepository secondJobRepository;

    public List<secondjob> secondjobList() {return secondJobRepository.findAll();}


}
