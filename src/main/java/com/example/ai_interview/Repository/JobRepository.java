package com.example.ai_interview.Repository;

import com.example.ai_interview.Model.firstjob;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface JobRepository extends JpaRepository<firstjob, Integer> {

}
