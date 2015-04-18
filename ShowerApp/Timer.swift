//
//  Timer.swift
//  ShowerApp
//
//  Created by Ashley Lee on 4/16/15.
//  Copyright (c) 2015 Ashley Lee. All rights reserved.
//

import UIKit

class Timer: UIViewController {

    @IBOutlet var timerLabel: UILabel!
    
    var minutes = 0
    var timer = NSTimer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTimer()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func setupTimer() {
        minutes = 30
            //NSNumber(integer: Int(showerSlider.value))
        
        timerLabel.text = " \(minutes) minutes"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(60.0, target: self, selector: Selector("subtractTime"), userInfo: nil, repeats: true)
    }
    
    func subtractTime(){
        minutes--
        timerLabel.text = " \(minutes) minutes"
        
        if(minutes == 0) {
            timer.invalidate()
        }
    }
    
    @IBAction func end() {
        dismissViewControllerAnimated(true, completion: nil)
    

    }

}
