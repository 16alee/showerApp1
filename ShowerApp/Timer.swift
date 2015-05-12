//
//  Timer.swift
//  ShowerApp
//
//  Created by Ashley Lee on 4/16/15.
//  Copyright (c) 2015 Ashley Lee. All rights reserved.
//

import UIKit
import MediaPlayer


class Timer: UIViewController {

    @IBOutlet var timerLabel: UILabel!
    
    var myPlayer : MPMusicPlayerController!
    var seconds = 0
    var minutes = 0
    var userTimer = 0
    var timerTime = 0
    var total = 0
    var timer = NSTimer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTimer()
        playMusic()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setupTimer() {
        timerLabel.text = "\(userTimer) : 00"
        total = userTimer * 60
        seconds = total % 60
        minutes = total / 60
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("subtractTime"), userInfo: nil, repeats: true)
    }
    
   
    func subtractTime(){
        total--
        seconds = total % 60
        minutes = total / 60
        timerLabel.text = " \(minutes) : \(seconds)"
        
        if total == 0 {
            timer.invalidate()
            timerLabel.text = "0 : 00"
        }
        
        else if seconds < 10 && seconds > -1{
            timerLabel.text = "\(minutes) : 0\(seconds)"
        }
   }

    @IBAction func end() {
        dismissViewControllerAnimated(true, completion: nil)
        myPlayer.stop()

    }
    
    func playMusic() {
        myPlayer = MPMusicPlayerController.systemMusicPlayer()
        let query = MPMediaQuery()
        myPlayer.setQueueWithQuery(query)
        myPlayer.play()
        
    
    }
}
