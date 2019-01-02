//
//  OrangeViewController.swift
//  Rainbow
//
//  Created by Admin on 12/5/18.
//  Copyright © 2018 Denys. All rights reserved.
//

import UIKit

class OrangeViewController: UIViewController {

    @IBOutlet weak var orangeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        orangeLabel.text = "I'm Orange"
    }
}
