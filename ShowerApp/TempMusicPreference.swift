//
//  TempMusicPreference.swift
//  ShowerApp
//
//  Created by Ashley Lee on 5/12/15.
//  Copyright (c) 2015 Ashley Lee. All rights reserved.
//

import UIKit
import MediaPlayer

class TempMusicPreference: UIViewController {
    var myPlayer : MPMusicPlayerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func playMusic() {
        myPlayer = MPMusicPlayerController.systemMusicPlayer()
        let query = MPMediaQuery()
        myPlayer.setQueueWithQuery(query)
        myPlayer.play()
    }
    
}

