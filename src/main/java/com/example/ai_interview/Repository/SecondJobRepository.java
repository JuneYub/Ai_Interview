package com.example.ai_interview.Repository;

import com.example.ai_interview.Model.SecondJobId;
import com.example.ai_interview.Model.secondjob;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SecondJobRepository extends JpaRepository<secondjob, SecondJobId> {
}
