package com.example.ai_interview.Model;

import lombok.Builder;
import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Builder
@Table(name="record")
public class RecordEntity {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private String firstJobName;
    private String secondJobName;
    private String introFirst;
    private String introSecond;
    private String q1;
    private String q2;
    private String q3;
    private String a1;
    private String a2;
    private String a3;
    private String studentId;
}