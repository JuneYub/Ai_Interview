package com.example.ai_interview.Repository;

import com.example.ai_interview.Model.firstjob;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface JobRepository extends JpaRepository<firstjob, Integer> {

    @Query(value = "SELECT FirstJobName FROM firstjob", nativeQuery = true)
    List<String> jobListAll();

}
