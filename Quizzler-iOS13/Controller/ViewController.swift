//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progBar: UIProgressView!
    @IBOutlet weak var btnChoice1: UIButton!
    @IBOutlet weak var btnChoice2: UIButton!
    @IBOutlet weak var btnChoice3: UIButton!
    @IBOutlet weak var txtQuestion: UILabel!
    @IBOutlet weak var score: UILabel!
    var quiz : QuizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerPressed(_ sender: UIButton) {
        let ans = sender.currentTitle
        if(quiz.checkAnswer(ans: ans ?? "")){
            quiz.addScore()
            sender.backgroundColor =  .green
        }else{
            sender.backgroundColor =  .red
        }
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI(){
        progBar.setProgress(quiz.getProgress(), animated: true)
        if(quiz.isReachLimit()){
            txtQuestion.text = quiz.getCurrentQuestion()
            btnChoice1.backgroundColor = .clear
            btnChoice2.backgroundColor = .clear
            btnChoice3.backgroundColor = .clear
            
            btnChoice1.setTitle(quiz.getCurrChoiceA(), for: .normal)
            btnChoice2.setTitle(quiz.getCurrChoiceB(), for: .normal)
            btnChoice3.setTitle(quiz.getCurrChoiceC(), for: .normal)
            
            score.text = "Score : \(quiz.getScore())"
            quiz.questCounter += 1
        }
    }
}

