//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes: [String: Int] = [
        "Soft": 5,
        "Medium": 8,
        "Hard": 12
    ]

    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness: String = sender.currentTitle!
        switch hardness {
        case "Soft":
            print(eggTimes["Soft"]!)
        case "Medium":
            print(eggTimes["Medium"]!)
        case "Hard":
            print(eggTimes["Hard"]!)
        default:
            print("ERROR...Button title text does not match a time specified or doesn't contain text")
        }
    }
    
}
