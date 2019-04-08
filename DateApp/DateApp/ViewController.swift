//
//  ViewController.swift
//  DateApp
//
//  Created by Alihan Demir on 24.09.2018.
//  Copyright © 2018 Alihan Demir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var anotherLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didChangeDate(_ sender: UIDatePicker) {
        let date : Date = sender.date
        let formatter : DateFormatter = DateFormatter()
        formatter.dateFormat = "eeee"
        let dayOfWeek : String = formatter.string(from: date)
        resultLabel.text = "The day was a \(dayOfWeek)"
        
        formatter.dateStyle = DateFormatter.Style.short
        formatter.timeStyle = DateFormatter.Style.short
        
        let strDate = formatter.string(from: sender.date)
        anotherLabel.text = strDate
        
    }
}

