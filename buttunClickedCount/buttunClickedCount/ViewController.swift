//
//  ViewController.swift
//  buttunClickedCount
//
//  Created by Alihan Demir on 11.09.2018.
//  Copyright © 2018 Alihan Demir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var clickcount = 0
   
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var lbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func cliked(_ sender: UIButton) {
        clickcount += 1
        Label.text = "Button clicked \(clickcount) times"
    }
    
    @IBAction func reset(_ sender: UIButton) {
        clickcount = 0
        Label.text = "Button clicked \(clickcount) times"
    }
    
    @IBAction func clickCount(_ sender: UIStepper) {
        lbl.text = "\(Int(sender.value))"
    }
    
}

