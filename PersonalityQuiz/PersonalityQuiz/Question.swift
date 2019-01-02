//
//  Question.swift
//  PersonalityQuiz
//
//  Created by Admin on 12/7/18.
//  Copyright © 2018 Denys. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var	answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}
