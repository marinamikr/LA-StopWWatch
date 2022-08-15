//
//  ViewController.swift
//  StopWWatch
//
//  Created by 原田摩利奈 on 8/15/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var count: Float = 0.0
    
    var timer: Timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @objc func up(){
        count = count + 0.01
        label.text = String(format: "%.2f", count)
    }
    
    @IBAction func start(){
        if !timer.isValid {
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(self.up), userInfo: nil, repeats: true)
        }
    }

    @IBAction func stop(){
        if timer.isValid {
            timer.invalidate()
        }
    }
    
    @IBAction func reset(){
        if timer.isValid {
            timer.invalidate()
            count = 0.00
            print(count)
            label.text = String(count)
        } else {
            !timer.isValid
            count = 0.00
            label.text = String(count)
        }
    }

}

