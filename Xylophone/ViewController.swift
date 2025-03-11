//
//  ViewController.swift
//  Xylophone
//
//  Created by Marwan Mekhamer on 10/03/2025.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player : AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnPressed(_ sender: UIButton) {
        playsound(soundname: sender.currentTitle ?? "")
        
        sender.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1
        }
    }
    
    func playsound(soundname : String) {
        let url = Bundle.main.url(forResource: soundname, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
}

