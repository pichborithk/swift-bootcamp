//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Pichborith Kong on 9/8/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(text: "1 = 2", answer: "False"),
        Question(text: "1 + 1 = 2", answer: "True"),
        Question(text: "5 - 2 = 4", answer: "False"),
    ]
    
    var score = 0
    var questionNumber = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    mutating func nextQuestion() {
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    
    func getScore() -> Int {
        return score
    }
}
