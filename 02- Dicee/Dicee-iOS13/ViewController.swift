//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    // to display image like below need to type: #imageLiteral(
    let diceList = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        diceImageViewOne.image = #imageLiteral(resourceName: "DiceSix")
//        diceImageViewOne.alpha = 0.5
//        diceImageViewTwo.image = #imageLiteral(resourceName: "DiceTwo")
//        diceImageViewTwo.alpha = 0.5
        diceImageViewOne.image = diceList.randomElement()
        diceImageViewTwo.image = diceList.randomElement()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
//        diceImageViewOne.image = diceList[Int.random(in: 0...5)]
        diceImageViewOne.image = diceList.randomElement()
//        diceImageViewTwo.image = diceList[Int.random(in: 0...5)]
        diceImageViewTwo.image = diceList.randomElement()
    }
    
}

