//
//  ViewController.swift
//  Finalcountdown
//
//  Created by Chang Sophia on 2018/7/14.
//  Copyright © 2018年 Chang Sophia. All rights reserved.
//

import UIKit

var timer: Timer?
var goal: Date!
var now: Date!

class ViewController: UIViewController {
    
  
    @IBOutlet weak var goalTextField: UITextField!
    @IBOutlet weak var nowTextField: UITextField!
    @IBOutlet weak var myDatePickerValue: UIDatePicker!
    @IBOutlet weak var intervalTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        myDatePickerValue.minimumDate = Date()
        
    }
    
    override func didReceiveMemoryWarning(){
    super.didReceiveMemoryWarning()
    }
    override func viewDidDisappear(_ animated: Bool) {
        if timer != nil {
            timer?.invalidate()
        }
    }
    
    @IBAction func myDatePickerValue(_ sender: UIDatePicker) {
        goal = sender.date
        let now = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy MM dd"
        let time = formatter.string(from: now)
        self.nowTextField.text = time
        let interval = goal.timeIntervalSince(now)
        goalTextField.text = formatter.string(from: myDatePickerValue.date)
        let integerinterval = Int(interval/60/60/24+1)
        intervalTextField.text = ("\(integerinterval)")
        print(integerinterval)
    }
}
