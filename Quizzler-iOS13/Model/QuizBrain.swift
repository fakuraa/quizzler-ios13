//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Fadil Kurniawan on 18/05/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain{
    var score = 0
    var questCounter = 0
    let quiz = [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
                Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
                Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
                Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
                Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
                Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
                Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
                Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
                Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
                Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")

    ]
    
    func checkAnswer(ans:String) -> Bool { return self.quiz[questCounter-1].correctAnswer == ans }
    
    func getProgress() -> Float { return Float(questCounter)/Float(quiz.count) }
    
    func isReachLimit() -> Bool { return questCounter < quiz.count }
    
    func getCurrentQuestion() -> String { return quiz[questCounter].text }
    
    func getCurrChoiceA() -> String { return quiz[questCounter].answer[0] }
    func getCurrChoiceB() -> String { return quiz[questCounter].answer[1] }
    func getCurrChoiceC() -> String { return quiz[questCounter].answer[2] }
    
    func getScore() -> Int { return score}
    
    mutating func addScore(){ score += 10 }
}
