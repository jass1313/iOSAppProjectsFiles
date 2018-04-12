//
//  ViewController.swift
//  YoutubeApp
//
//  Created by Jasbeer Singh on 05/04/18.
//  Copyright © 2018 Jasbeer Singh. All rights reserved.
//

import UIKit
import YouTubePlayer_Swift

class ViewController: UIViewController {

//    https://www.youtube.com/watch?v=AgiArXUbNsY&list=UUf4oQ01ZpwpwQxTFn7Rwb7Q
    
//    AgiArXUbNsY&list - videoID

//    UUf4oQ01ZpwpwQxTFn7Rwb7Q - PLaylistID
    
    @IBOutlet weak var videoView: YouTubePlayerView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func previousTapped(_ sender: Any) {
        videoView.previousVideo()
    }
    @IBAction func nextTapped(_ sender: Any) {
        videoView.nextVideo()
    }
    @IBAction func playTapped(_ sender: UIButton) {
        if sender.isSelected {
            sender.setTitle("Pause", for: .selected)
            videoView.pause()
        }else {
            sender.setTitle("Play", for: .normal)
            videoView.play()
        }
        
    }
    @IBAction func loadVideo(_ sender: Any) {
        let myVideo: String = "AgiArXUbNsY&list"
        videoView.loadVideoID(myVideo)
    }
    @IBAction func loadPlaylist(_ sender: Any) {
        let myPlaylist: String = "UUf4oQ01ZpwpwQxTFn7Rwb7Q"
        videoView.loadPlaylistID(myPlaylist)
    }
    
    
    


}

