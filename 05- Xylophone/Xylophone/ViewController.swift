//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func keyPressed(_ sender: UIButton) {
        //        playSound(sender.titleLabel?.text)
        playSound(soundName: sender.currentTitle!)
        //        playSound(sender.title(for: .normal))
        //        var originalColor = sender.backgroundColor
        //        sender.backgroundColor = UIColor.red.withAlphaComponent(0.5)
        sender.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //           print("This message is delayed")
            //            sender.backgroundColor = originalColor
            sender.alpha = 1
        }
    }
    
    func playSound(soundName: String) {
        
        
        //        guard let url  = Bundle.main.url(forResource: soundName, withExtension: "wav") else {
        //            return
        //        }
        //
        //        do {
        //            // set category to playbak to priority the sound (it can play even phone is on silent)
        //            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
        //            try AVAudioSession.sharedInstance().setActive(true)
        //
        //            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
        //            guard let player = player else {
        //                return
        //            }
        //            player.play()
        //        } catch let error {
        //            print(error.localizedDescription)
        //        }
        
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
}

