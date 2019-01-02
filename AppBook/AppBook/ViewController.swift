//
//  ViewController.swift
//  AppBook
//
//  Created by Admin on 11/23/18.
//  Copyright © 2018 Denys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var clickNumber: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myButton.setTitleColor(.red, for: .normal)
        
    }

    @IBOutlet weak var myButton: UIButton!
    
    @IBAction func pressButton(_ sender: UIButton) {
        print("The button was pressed")
        clickNumber += 10
        let label = UILabel(frame: CGRect(x:160, y:160 + clickNumber, width:200, height: 40))
        label.text = "AM HERE!"
        label.textColor = .green
        view.addSubview(label)
    }
}

