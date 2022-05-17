//
//  question.swift
//  Quizzler
//
//  Created by Mohamed AbdElhakam on 17/05/2022.
//

import Foundation
struct question {
    var text : String
    var answer : [String]
    var rightAnswer : String
    init (a : String , q : [String] , correctAnswer : String){
        text = a
        answer = q
        rightAnswer = correctAnswer
    }
    
}
