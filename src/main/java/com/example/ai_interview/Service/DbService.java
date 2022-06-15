package com.example.ai_interview.Service;

import com.example.ai_interview.Model.RecordEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DbService {
    @Autowired
    private UserRepository userRepository;

    public RecordEntity insert(RecordEntity userEntity) {
        return userRepository.save(userEntity);
    }
}
