package com.example.ai_interview.Model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
@Data
public class firstjob {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer FirstJobId;

    private String FirstJobName;
}
