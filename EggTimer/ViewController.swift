//
//  ViewController.swift
//  EggTimer
//
//  Created by Yawo Echitey on 12/5/16.
//  Copyright © 2016 Echitey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var time: Int = 210
    
    var timer =  Timer()
    
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func play(_ sender: Any) {
        if(time > 0){
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.gogo), userInfo: nil, repeats: true)
        }
    }
    @IBAction func pause(_ sender: Any) {
        timer.invalidate()
    }
    @IBAction func reset(_ sender: Any) {
        time = 210
        timeLabel.text = String(time)
        timer.invalidate()
    }
    @IBAction func menosTen(_ sender: Any) {
        if(time >= 10) {
            time = time - 10
            timeLabel.text = String(time)
        }
    }
    @IBAction func maisTen(_ sender: Any) {
        time = time + 10
        timeLabel.text = String(time)
    }
    
    func gogo(){
        time = time - 1
        timeLabel.text = String(time)
        if(time == 0){
            timer.invalidate()
        }
        
    }

}

