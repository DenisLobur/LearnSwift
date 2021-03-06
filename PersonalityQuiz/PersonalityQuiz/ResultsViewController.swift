//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Admin on 12/7/18.
//  Copyright © 2018 Denys. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var responses: [Answer]!
    
    @IBOutlet weak var resultAnswerLabel: UILabel!
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        navigationItem.hidesBackButton = true

    }
    
    func calculatePersonalityResult() {
        var frequencyOfAnswers: [AnimalType: Int] = [:]
        
        let responseTypes = responses.map { $0.type }
        
        for response in responseTypes {
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
        }
        
        let frequenceAnswersSorted = frequencyOfAnswers.sorted(by: {
            (pair1, pair2) -> Bool in
                return pair1.value > pair2.value
            })
        
        let mostCommonAnswer = frequenceAnswersSorted.first!.key
        
        resultAnswerLabel.text = "You are \(mostCommonAnswer.rawValue)!"
        resultDefinitionLabel.text = mostCommonAnswer.definition
    }

}
