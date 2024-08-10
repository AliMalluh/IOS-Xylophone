//
//  ViewController.swift
//  Xylophone
//
//  Created by Ali-Malluh on 24/10/2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(sender: sender.currentTitle!)
        
        sender.alpha = 0.5

          DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
              sender.alpha = 1.0
          }
    }
    
    func playSound(sender: String) {
        let url = Bundle.main.url(forResource: sender, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
