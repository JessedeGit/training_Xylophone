//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound("note\(sender.tag)")
    }
    
    func playSound(_ tag: String) {
        
        var audioPlayer: AVAudioPlayer!

        let soundRUL = Bundle.main.url(forResource: tag, withExtension: "wav")
        
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: soundRUL!)
        }
        catch{
            print(error)
        }
        
        audioPlayer.play()
    }
}
