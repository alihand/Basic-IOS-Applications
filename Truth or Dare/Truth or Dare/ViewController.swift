//
//  ViewController.swift
//  Truth or Dare
//
//  Created by Alihan Demir on 29.12.2018.
//  Copyright © 2018 Alihan Demir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    var honesty = [
        "Are you still in love with your ex?",
        "What would you do if you woke up trapped in the opposite sex's body?",
        "Can you see the matrix?",
        "Who was your first boyfriend/girlfriend?",
        "How old were you when you last peed the bed?",
        "Do you believe in aliens?",
        "Have you ever stolen?",
        "What is the craziest thing you've ever done?",
        "Have you ever blamed something that you had done on someone else?",
        "What is your biggest pet peeve?",
        "The moon landing, do you buy that?",
        "Who is the most annoying person you know?",
        "Who is your secret crush?",
        "Have you ever copied in school?",
        "Ever lost an argument while rehearsing it in your head?",
        "Have you ever cheated in a relationship?",
        "If you were extremely rich, what would you spend your time doing?",
        "Do you believe in horoscopes?",
        "Have you ever been in jail?",
        "What is your guilty pleasure?",
        "Have you ever stalked someone?",
        "Have you ever peed in the swimming pool?",
        "How long have you gone without showering?",
        "Have you ever told a secret after promising you wouldn't tell?",
        "Are you a good dancer?",
        "Who is your favorite person?",
        "Who would you rather be stranded on an island with?",
        "What is your biggest fear?",
        "Would you last a week without your best friend?",
        "What is your nickname?"
    ]
    
    var risky = [
        "I dare you to call your ex and act crazy",
        "I dare you to swim with sharks",
        "I dare you to eat very hot pepper",
        "I dare you to tell us a big lie you have told",
        "I dare you to drink 3 spoons of fat",
        "I dare you to dye your hair red",
        "I dare you to walk 3 feet on your hands",
        "I dare you to burp a song until someone guesses it",
        "I dare you to object at a wedding",
        "I dare you to kiss your ex",
        "I dare you to play a song by slapping your butt cheeks till someone guesses the song",
        "I dare you to drink a glass of milk while standing on your hands",
        "I dare you to put 2 ice cubes down your pants",
        "I dare you to dance the Single Ladies choreography for a minute",
        "I dare you to climb a tall tree",
        "I dare you to eat a bug",
        "I dare you to shave your head",
        "I dare you to drink 2 litres of water without taking a break",
        "I dare you to hug a stranger's dog",
        "I dare you to act like a monkey for 1 minute",
        "I dare you to write a poem",
        "I dare you to embarrass yourself on facebook",
        "I dare you to take a picture of yourself while picking your nose",
        "I dare you to lick the feet of the first person you see",
        "I dare you to do a flawless yoga pose",
        "I dare you to spin a ball on your finger for 10 seconds",
        "I dare you to prank call someone you know",
        "I dare you to do pushups for 5 minutes",
        "I dare you to write your name with your foot",
        "I dare you to ask a stranger for a hug"
    ]
    var colors = ["aqua", "black", "blue", "fuchsia", "gray", "green",
    "lime", "maroon", "navy", "olive", "orange", "purple", "red",
    "silver", "teal", "white", "yellow"]
    
    func truth() -> String{
        let honest = honesty.randomElement()
        return "**TRUTH**\n" + honest!
    }
    func dare() -> String{
        let dare = risky.randomElement()
        return "**DARE**\n" + dare!
    }
    @IBAction func truthButton(_ sender: Any){
        let mystring = truth()
        myLabel.text = mystring
    }
    @IBAction func dareButton(_ sender: Any){
        let mysecondstring = dare()
        myLabel.text = mysecondstring
    }
    
}

