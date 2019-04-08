//
//  ViewController.swift
//  BodyMassIndex
//
//  Created by Alihan Demir on 16.09.2018.
//  Copyright © 2018 Alihan Demir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var heightValue : Float = 0.0
    var weightValue : Float = 0.0
    var bodyMassIndex : Float = 0.0
    
    @IBOutlet weak var txtHeight: UITextField!
    @IBOutlet weak var txtWeight: UITextField!
    @IBOutlet weak var txtResualt: UITextField!
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }

    @IBAction func calculate(_ sender: UIButton){
        fonksiyon()
    }
    
    func fonksiyon(){
        weightValue = Float(txtWeight.text!)!
        heightValue = Float(txtHeight.text!)!
        heightValue /= 100
        bodyMassIndex = weightValue / ( heightValue * heightValue )
        
        if (bodyMassIndex < 20 ){
            txtResualt.text = "Zayıf"
        }
        else if (bodyMassIndex < 25){
             txtResualt.text = "Hafif Kilolu"
        }
        else if (bodyMassIndex < 30){
            txtResualt.text = "Şişman"
        }
        else if (bodyMassIndex < 40){
            txtResualt.text = "Önemli Derecede Şişman"
        }
        else if (bodyMassIndex < 45){
            txtResualt.text = "Aşırı Şişman"
        }
        else{
            txtResualt.text = "Ölümcül Şişman"
        }
    }
}

