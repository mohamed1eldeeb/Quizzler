//
//  qiuzBrain.swift
//  Quizzler
//
//  Created by Mohamed AbdElhakam on 17/05/2022.
//

import Foundation
import UIKit
struct quizBrain {
    let quiz = [
        question(a: "Which is the largest organ in the human body?", q: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
                question(a: "Five dollars is worth how many nickels?", q: ["25", "50", "100"], correctAnswer: "100"),
                question(a: "What do the letters in the GMT time zone stand for?", q: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
                question(a: "What is the French word for 'hat'?", q: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
                question(a: "In past times, what would a gentleman keep in his fob pocket?", q: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
                question(a: "How would one say goodbye in Spanish?", q: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
                question(a: "Which of these colours is NOT featured in the logo for Google?", q: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
                question(a: "What alcoholic drink is made from molasses?", q: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
                question(a: "What type of animal was Harambe?", q: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
                question(a: "Where is Tasmania located?", q: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")

    ]
    var questions = 0
    
    var score = 0
    func getQuestionAnswer() -> String{
        return quiz[questions].text
    }
    func getAnswer() -> [String] {
        return quiz[questions].answer
    }
    mutating func checkAnswer(_ userAnswer : String) -> Bool {
        if userAnswer == quiz[questions].rightAnswer{
            
            score += 1
            return true
        }else{
            
            return false
        }
            
    }
    mutating func nextQuestion(){
        if questions + 1 < quiz.count{
            questions += 1
            
    }else{
        
        questions = 0
        score = 0
        
    }
        
    }
    mutating func getScore() -> Int{
        return score
    }
    func getProgress()-> Float{
        let progress = Float(questions + 1) / Float(quiz.count)
        return progress
        
    }
    
    
}
