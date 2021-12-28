//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    var timer: Timer = Timer()
    var secondsRemaining: Int = 0
    let eggTimes: [String: Int] = [
        "Soft": 3,
        "Medium": 4,
        "Hard": 7
    ]

    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        
        let hardness: String = sender.currentTitle!
        secondsRemaining = eggTimes[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0,
                             target: self,
                             selector: #selector(updateTimer),
                             userInfo: nil,
                             repeats: true)
    }
    
    @objc func updateTimer() {
        if secondsRemaining > 0 {
            print("\(secondsRemaining) seconds")
            secondsRemaining -= 1
        } else {
            timer.invalidate()
            titleLabel.text = "DONE!"
        }
    }
}
