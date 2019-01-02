//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Admin on 12/3/18.
//  Copyright © 2018 Denys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var controllSwitch: UISwitch!
    
    
    @IBAction func yellowButtonTap(_ sender: UIButton) {
        if controllSwitch.isOn {
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
    }
    
    
    @IBAction func greenButtonTap(_ sender: UIButton) {
        if controllSwitch.isOn {
            performSegue(withIdentifier: "Green", sender: nil)
        }
    }
}

