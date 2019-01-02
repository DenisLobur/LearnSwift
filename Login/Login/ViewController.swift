//
//  ViewController.swift
//  Login
//
//  Created by Admin on 12/3/18.
//  Copyright © 2018 Denys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var name: UITextView!
    
    @IBOutlet weak var forgotNameButton: UIButton!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotNameButton{
            segue.destination.title = "Forgot name"
        } else if sender == forgotPasswordButton {
            segue.destination.title = "Forgot password"
        } else {
            segue.destination.title = name.text
        }
        
    }
    

    @IBAction func loginTap(_ sender: UIButton) {
        
    }
    
    @IBAction func forgotNameTap(_ sender: UIButton) {
        performSegue(withIdentifier: "fromLogin", sender: forgotNameButton)
    }
    
    @IBAction func forgotPasswordTap(_ sender: UIButton) {
        performSegue(withIdentifier: "fromLogin", sender: forgotPasswordButton)
    }
}

