package com.example.ai_interview.Model;


import lombok.Data;

import javax.persistence.*;

@Entity
@Data
public class secondjob {

    @EmbeddedId
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private SecondJobId secondJobId;

    private String SecondJobName;
}
