package com.example.ai_interview.Service.Db;

import com.example.ai_interview.Model.RecordEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Iterator;

@Service
public class DbService {
    @Autowired
    private UserRepository userRepository;

    public RecordEntity insert(RecordEntity userEntity) {
        return userRepository.save(userEntity);
    }

    public ArrayList<RecordEntity> find(String studentId) {
        ArrayList<RecordEntity> list = new ArrayList<>();
        Iterator<RecordEntity> iterator = userRepository.findAll().iterator();
        while (iterator.hasNext()) {
            RecordEntity tmp = iterator.next();
            if (tmp.getStudentId().equals(studentId)) {
                list.add(tmp);
            }
        }

        return list;
    }
}
