//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Admin on 12/14/18.
//

import UIKit

class AthleteFormViewController: UIViewController {
    
    var athlete: Athlete?

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var ageText: UITextField!
    @IBOutlet weak var leagueText: UITextField!
    @IBOutlet weak var teamText: UITextField!
    
    @IBAction func save(_ sender: UIButton!) {
        guard let name = nameText.text,
              let age = ageText.text,
              let league = leagueText.text,
              let team = teamText.text
            else{return}
        
        athlete = Athlete(name: name, age: age, league: league, team: team)
        performSegue(withIdentifier: "AthleteList", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI(){
        if let athleteUnwrapped = athlete {
            nameText.text = athleteUnwrapped.name
            ageText.text = athleteUnwrapped.age
            leagueText.text = athleteUnwrapped.league
            teamText.text = athleteUnwrapped.team
        }
    }

}
