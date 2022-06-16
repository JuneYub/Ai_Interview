package com.example.ai_interview.Model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@Entity
@Builder
@Table(name = "record")
@AllArgsConstructor
public class RecordEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int Id;
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

    public RecordEntity() {
        super();
    }

//    public RecordEntity(int Id, String firstJobName, String secondJobName, String introFirst, String introSecond, String q1, String q2, String q3, String a1, String a2, String a3, String studentId) {
//        super();
//        this.Id = Id;
//        this.firstJobName = firstJobName;
//        this.secondJobName = secondJobName;
//        this.introFirst = introFirst;
//        this.introSecond = introSecond;
//        this.q1 = q1;
//        this.q2 = q2;
//        this.q3 = q3;
//        this.a1 = a1;
//        this.a2 = a2;
//        this.a3 = a3;
//        this.studentId = studentId;
//    }
}