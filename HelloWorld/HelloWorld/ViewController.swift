//
//  ViewController.swift
//  HelloWorld
//
//  Created by Alihan Demir on 9.09.2018.
//  Copyright © 2018 Alihan Demir. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{
   
    var variable : String = ""
    
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var Input: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
         Label.resignFirstResponder()
        return true
    }
    @IBAction func Result(_ sender: UIButton) {
        updateLabels()
    }
    func updateLabels(){
        variable = Input.text!
        if(Input.text!.isEmpty ){
            Label.text = "Hello There General Kenobi!\(variable)"
        }
        else{
        Label.text = variable
        }
    }
}
