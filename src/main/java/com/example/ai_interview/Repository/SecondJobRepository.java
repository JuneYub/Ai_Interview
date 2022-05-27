package com.example.ai_interview.Repository;

import com.example.ai_interview.Model.SecondJobId;
import com.example.ai_interview.Model.secondjob;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.HashMap;
import java.util.List;

public interface SecondJobRepository extends JpaRepository<secondjob, SecondJobId> {


    HashMap<String, List<String>> sndJobMap = new HashMap<>();

    @Query(value = "SELECT SecondJobName FROM secondjob WHERE FirstJobId = 0", nativeQuery = true)
    List<String> sndJobList0();

    @Query(value = "SELECT SecondJobName FROM secondjob WHERE FirstJobId = 1", nativeQuery = true)
    List<String> sndJobList1();

    @Query(value = "SELECT SecondJobName FROM secondjob WHERE FirstJobId = 2", nativeQuery = true)
    List<String> sndJobList2();

    @Query(value = "SELECT SecondJobName FROM secondjob WHERE FirstJobId = 3", nativeQuery = true)
    List<String> sndJobList3();

    @Query(value = "SELECT SecondJobName FROM secondjob WHERE FirstJobId = 4", nativeQuery = true)
    List<String> sndJobList4();

    @Query(value = "SELECT SecondJobName FROM secondjob WHERE FirstJobId = 5", nativeQuery = true)
    List<String> sndJobList5();

    @Query(value = "SELECT SecondJobName FROM secondjob WHERE FirstJobId = 6", nativeQuery = true)
    List<String> sndJobList6();

    @Query(value = "SELECT SecondJobName FROM secondjob WHERE FirstJobId = 7", nativeQuery = true)
    List<String> sndJobList7();

    @Query(value = "SELECT SecondJobName FROM secondjob WHERE FirstJobId = 8", nativeQuery = true)
    List<String> sndJobList8();
}
