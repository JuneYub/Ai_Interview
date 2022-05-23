package com.example.ai_interview.Service.InterView;

import java.util.*;

public class InterViewModel {

    List<String> interViewQuestions = new ArrayList<>();
    List<String> interViewAnswers = new ArrayList<>();

    public void addInterViewQuestion(String question) {
        interViewQuestions.add(question);
    }

    public void addInterViewAnswer(String answer) {
        interViewAnswers.add(answer);
    }

    String getQuestionAnswerString() {
        String result = "";
        for (int i = 0; i < interViewQuestions.size(); i++) {
            result += "Q: " + interViewQuestions.get(i) + "\n";
            result += "A: " + interViewAnswers.get(i) + "\n\n";
        }
        return result;
    }
}