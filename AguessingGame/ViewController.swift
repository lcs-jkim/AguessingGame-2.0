//
//  ViewController.swift
//  AguessingGame
//
//  Created by Kim, Jenis on 2019-10-05.
//  Copyright © 2019 Kim, Jenis. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    // MARK: Properties
    let targetNumber = Int.random(in: 1...100)
    @IBOutlet weak var SubmittedGuess: UITextField!
    // MARK: Inizializers
    
    // MARK: methods (functions) - behaviors
    
    // runs as soon as the view becomes visible
    override func viewDidLoad() {
        super.viewDidLoad()
        
        speak(message: "I'm thinking of a number between 1 and 100. Guess what it is")
    }

    // Will be used to check a guess
    @IBAction func CheckGuess(_ sender: Any) {
        // Obtain the value from the text field
        
        guard let guessText = SubmittedGuess.text, guessText != "" else {
            self.speak(message: "Hey bro, what about entering a value?")
            return
        }
        
        guard let guessNumber = Int(guessText) else {
            speak(message: "Hey, what about entering a number?")
            return
        }
            
        // For testing purposes, what was the guess?
        print("For testing purposes, the random number is \(targetNumber)")
        
        // Give the appropriate feedback to the user
        if guessNumber > targetNumber {
            speak(message: "Guess lower next time")
        } else if guessNumber < targetNumber {
            speak(message: "Guess higher next time")
        } else {
            speak(message: "You are correct")
        }
        
    }
    
    // A function will speak whatever message is provided
    func speak(message: String) {
        // Do any additional setup after loading the view.
        // class 'AVSpeechSynthesizer
        let synthesizer = AVSpeechSynthesizer()
        
        // Make an object named 'utterance', which is an instance of the class AVSpeechUtterance
        let utterance = AVSpeechUtterance(string: message)
        
        // Speak the message
        synthesizer.speak(utterance)
    }
    
}

