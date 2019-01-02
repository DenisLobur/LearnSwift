//
//  ViewController.swift
//  Light
//
//  Created by Admin on 11/23/18.
//  Copyright © 2018 Denys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var lightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func pressButton(_ sender: UIButton) {
        lightOn = !lightOn
       
        updateUI()
    }
    
    func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
    }
}

