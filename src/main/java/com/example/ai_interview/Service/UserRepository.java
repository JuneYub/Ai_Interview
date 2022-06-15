package com.example.ai_interview.Service;

import com.example.ai_interview.Model.RecordEntity;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<RecordEntity, Integer> {
}