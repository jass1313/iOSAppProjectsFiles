//
//  ViewController.swift
//  ShuffleMusic
//
//  Created by Jasbeer Singh on 06/04/18.
//  Copyright © 2018 Jasbeer Singh. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var musicName: UILabel!
    
    let musicList = ["Waheguru (The Journey) [feat. Reiner Erlings] - Manika Kaur(Mr-Jatt.Com)", "Tu Danaa (feat. Soumik Datta) - Manika Kaur(Mr-Jatt.Com)", "Ram Japo Ji (feat. Soumik Datta) - Manika Kaur(Mr-Jatt.Com)", "Pootaa Mataa (feat. Bernhard Schimpelsberger) - Manika Kaur(Mr-Jatt.Com).mp3", "I Bow to You Waheguru (feat. Talvin Singh) - Manika Kaur(Mr-Jatt.Com)", "Gurbani | Bandhanaa | Manika Kaur Kandhari | Devotional Song Compilation | Shabad Gurbani Kirtan (320  kbps)", "Aukhee Gharhee (feat. Jyotsna Srikanth) - Manika Kaur(Mr-Jatt.Com)"]
    
  
    var myAudioPlayer = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makePlayerReady()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    @IBAction func shuffleTappe(_ sender: Any) {
        makePlayerReady()
        myAudioPlayer.play()
    }
    
    @IBAction func pauseTapped(_ sender: Any) {
    myAudioPlayer.pause()
//        myAudioPlayer.play()
    }
    
    @IBAction func stopTapped(_ sender: Any) {
        myAudioPlayer.stop()
        myAudioPlayer.currentTime = 0
    }
    
    func makePlayerReady(){
        do {
//            generate a radom number
            let randomMusic = Int(arc4random_uniform(6))
            print(randomMusic)
            let selectedMusic = musicList[randomMusic]
            
//            audio part
            let myURL = URL(fileURLWithPath: Bundle.main.path(forResource: selectedMusic, ofType: "mp3")!)
            
            myAudioPlayer = try AVAudioPlayer(contentsOf: myURL)
            myAudioPlayer.prepareToPlay()
            
        } catch {
            print(error)
        }
    }
    
    
    
}
//Label shoud display proper name of song








