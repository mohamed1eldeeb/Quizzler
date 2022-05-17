//
//  ViewController.swift
//  Quizzler
//
//  Created by Mohamed AbdElhakam on 17/05/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var topBtn: UIButton!
    @IBOutlet weak var middelBtn: UIButton!
    @IBOutlet weak var lastBtn: UIButton!
    var QuizBrain = quizBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        update()
        // Do any additional setup after loading the view.
    }


    @IBAction func answerButton(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let ActualUserAnswer = QuizBrain.checkAnswer(userAnswer)
        if ActualUserAnswer{
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        QuizBrain.nextQuestion()
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(update), userInfo: nil, repeats: false)
        

        
        
    }
    
    @objc
    func update() {
        questionLabel.text = QuizBrain.getQuestionAnswer()
        let answerList = QuizBrain.getAnswer()
        topBtn.setTitle(answerList[0], for: .normal)
        middelBtn.setTitle(answerList[1], for: .normal)
        lastBtn.setTitle(answerList[2], for: .normal)
        topBtn.backgroundColor = UIColor.clear
        middelBtn.backgroundColor = UIColor.clear
        lastBtn.backgroundColor = UIColor.clear
        progressBar.progress = QuizBrain.getProgress()
        numberLabel.text = "my score = \(QuizBrain.getScore())"
        
    }
    
    
    
}

