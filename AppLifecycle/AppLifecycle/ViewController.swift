//
//  ViewController.swift
//  AppLifecycle
//
//  Created by Admin on 12/14/18.
//  Copyright © 2018 Denys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var didFinishLaunching: UILabel!
    @IBOutlet weak var willResignActive: UILabel!
    @IBOutlet weak var didEnterBackground: UILabel!
    @IBOutlet weak var willEnterForeground: UILabel!
    @IBOutlet weak var didBecomeActive: UILabel!
    @IBOutlet weak var willTerminate: UILabel!
    
    var didFinishLaunchingCounter = 0
    var willResignCounter = 0
    var didEnterBackgroundCounter = 0
    var willEnterForegroundCounter = 0
    var didBecomeActiveCounter = 0
    var willTerminateCounter = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
    }
    
    func updateView() {
        didFinishLaunching.text = "App was Launced \(didFinishLaunchingCounter) times"
        willResignActive.text = "App went to background \(willResignCounter) times"
        didEnterBackground.text = "App entered background \(didEnterBackgroundCounter) times"
        willEnterForeground.text = "App enteredForeground \(willEnterForegroundCounter) times"
        didBecomeActive.text = "App became active \(didBecomeActiveCounter) times"
        willTerminate.text = "App terminated \(willTerminateCounter) times"
    }


}

