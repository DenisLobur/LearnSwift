//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by Admin on 12/7/18.
//  Copyright © 2018 Denys. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

    var questionIndex: Int = 0
    var answersChoosen: [Answer] = []
    
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet weak var rangedStackView: UIStackView!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var singleButton1: UIButton!
    @IBOutlet weak var singleButton2: UIButton!
    @IBOutlet weak var singleButton3: UIButton!
    @IBOutlet weak var singleButton4: UIButton!
    
    @IBOutlet weak var multipleLabel1: UILabel!
    @IBOutlet weak var multipleLabel2: UILabel!
    @IBOutlet weak var multipleLabel3: UILabel!
    @IBOutlet weak var multipleLabel4: UILabel!
    @IBOutlet weak var multipleSwitch1: UISwitch!
    @IBOutlet weak var multipleSwitch2: UISwitch!
    @IBOutlet weak var multipleSwitch3: UISwitch!
    @IBOutlet weak var multipleSwitch4: UISwitch!
    
    @IBOutlet weak var rangedLabel1: UILabel!
    @IBOutlet weak var rangedLabel2: UILabel!
    
    @IBOutlet weak var rangedSlider: UISlider!
    
    @IBOutlet weak var questionProgreesView: UIProgressView!
    
    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
        let currentAnswer = questions[questionIndex].answers
        
        switch sender {
        case singleButton1:
            answersChoosen.append(currentAnswer[0])
        case singleButton2:
            answersChoosen.append(currentAnswer[1])
        case singleButton3:
            answersChoosen.append(currentAnswer[2])
        case singleButton4:
            answersChoosen.append(currentAnswer[3])
        default:
            	break
        }
        
        nextQuestion()
    }
    
    
    @IBAction func multipleAnswerButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
        if multipleSwitch1.isOn {
            answersChoosen.append(currentAnswers[0])
        }
        
        if multipleSwitch2.isOn {
            answersChoosen.append(currentAnswers[1])
        }
        
        if multipleSwitch3.isOn {
            answersChoosen.append(currentAnswers[2])
        }
        
        if multipleSwitch4.isOn {
            answersChoosen.append(currentAnswers[3])
        }
        
        nextQuestion()
    }
    
    
    @IBAction func rangedAnswerButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        let index = Int(round(rangedSlider.value * Float(currentAnswers.count - 1)))
        answersChoosen.append(currentAnswers[index])
        
        nextQuestion()
    }
    
    func nextQuestion(){
        questionIndex += 1
        
        if questionIndex < questions.count {
            updateUI()
        } else {
            performSegue(withIdentifier: "ResultsSegue", sender: nil)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ResultsSegue" {
            let resultsViewController = segue.destination as! ResultsViewController
            resultsViewController.responses = answersChoosen
        }
    }
    
    var questions: [Question] = [
        Question(text: "Which food do you like the most?",
                 type: .single,
                 answers: [
                    Answer(text: "Steak", type: .dog),
                    Answer(text: "Fish", type: . cat),
                    Answer(text: "Carrots", type: .rabbit),
                    Answer(text: "Corn", type: .turtle)
                          ]),
        Question(text: "Which activities do you enjoy?",
                 type: .multiple,
                 answers: [
                    Answer(text: "Swimming", type: .turtle),
                    Answer(text: "Sleeping", type: .cat),
                    Answer(text: "Cuddling", type: .rabbit),
                    Answer(text: "Eating", type: .dog)
                          ]),
        Question(text: "How much do you enjoy car rides?",
                 type: .ranged,
                 answers: [
                    Answer(text: "I dislike them", type: .cat),
                    Answer(text: "I get a little nervous", type: .rabbit),
                    Answer(text: "I barely notice them", type: .turtle),
                    Answer(text: "I love them", type: .dog)
                          ])
                                ]
    
    private func updateUI(){
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangedStackView.isHidden = true
        
        navigationItem.title = "Question #\(questionIndex + 1)"
        
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        questionLabel.text = currentQuestion.text
        questionProgreesView.setProgress(totalProgress, animated: true)
        
        switch currentQuestion.type {
        case .single:
            updateSingleStack(using: currentAnswers)
        case .multiple:
            updateMultipleStack(using: currentAnswers)
        case .ranged:
            updateRangedStack(using: currentAnswers)
        }
    }
    
    private func updateSingleStack(using answers: [Answer]) {
        singleStackView.isHidden = false
        
        singleButton1.setTitle(answers[0].text, for: .normal)
        singleButton2.setTitle(answers[1].text, for: .normal)
        singleButton3.setTitle(answers[2].text, for: .normal)
        singleButton4.setTitle(answers[3].text, for: .normal)
    }
    
    private func updateMultipleStack(using answers: [Answer]) {
        multipleStackView.isHidden = false
        
        multipleSwitch1.isOn = false
        multipleSwitch2.isOn = false
        multipleSwitch3.isOn = false
        multipleSwitch4.isOn = false
        
        multipleLabel1.text = answers[0].text
        multipleLabel2.text = answers[1].text
        multipleLabel3.text = answers[2].text
        multipleLabel4.text = answers[3].text
    }
    
    private func updateRangedStack(using answers: [Answer]) {
        rangedStackView.isHidden = false
        
        rangedSlider.setValue(0.5, animated: false)
        
        rangedLabel1.text = answers.first?.text
        rangedLabel2.text = answers.last?.text
    }

}