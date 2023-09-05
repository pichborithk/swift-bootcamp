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
    
    //    let softTimer = 5
    //    let mediumTimer = 7
    //    let hardTimer = 12
    
    let eggTimer = ["Soft": 3, "Medium": 420, "Hard": 720]
    
    var secondsRemaining = 60
    
    var timer = Timer()
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        
        timer.invalidate()
//        switch hardness {
//        case "Soft":
//            print(softTimer)
//        case "Medium":
//            print(mediumTimer)
//        case "Hard":
//            print(hardTimer)
//        default:
//            print("Error")
//        }
        
//        print(eggTimer[hardness]!)
        secondsRemaining = eggTimer[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
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
