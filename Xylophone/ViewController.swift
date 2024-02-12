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
    
    var player : AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        sender.layer.opacity = 0.5
        playSound(ButtonId: sender.titleLabel!.text!)
        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { Timer in
            sender.layer.opacity = 1.0
        }
    }
    
    func playSound(ButtonId:String) {
           let url = Bundle.main.url(forResource: ButtonId, withExtension: "wav")
           player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
                   
       }

    

}

