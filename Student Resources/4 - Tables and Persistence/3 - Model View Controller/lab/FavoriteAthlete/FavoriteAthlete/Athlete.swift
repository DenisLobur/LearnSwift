//
//  Athlete.swift
//  FavoriteAthlete
//
//  Created by Admin on 12/14/18.
//

import Foundation

struct Athlete {
    var name: String?
    var age: String?
    var league: String?
    var team: String?
    
    var description: String {
        return "\(name) is \(age) years old and plays for \(team) in the \(league)"
    }
}
