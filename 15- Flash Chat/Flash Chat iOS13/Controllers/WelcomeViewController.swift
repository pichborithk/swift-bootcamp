//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {
    
    //    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
         titleLabel.text = ""
         let titleText = "⚡️FlashChat"
         var charIndex = 0.0
         for letter in titleText {
         Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { _ in
         self.titleLabel.text?.append(letter)
         }
         
         charIndex += 1
         */
        
        //        titleLabel.text = "⚡️FlashChat"
        titleLabel.text = Constants.appName
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = true
    }
    
//    override func viewDidAppear(_ animated: Bool) {}
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.isNavigationBarHidden = false
    }
    
//    override func viewDidDisappear(_ animated: Bool) {}
    
}




