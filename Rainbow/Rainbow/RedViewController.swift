//
//  ViewController.swift
//  Rainbow
//
//  Created by Admin on 12/5/18.
//  Copyright © 2018 Denys. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {

    @IBOutlet weak var redLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarItem.badgeValue = nil
        redLabel.text = "I'm Red"
    }


}

