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
    
    // MARK: Inizializers
    
    // MARK: methods (functions) - behaviors
    
    // runs as soon as the view becomes visible
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // class 'AVSpeechSynthesizer
        let synthesizer = AVSpeechSynthesizer()
        
        // Make a string that contains what we want the computer to say
        let message = "I'm thinking of a number between 1 and 100. Guess what it is"
        
        // Make an object named 'utterance', which is an instance of the class AVSpeechUtterance
        var utterance = AVSpeechUtterance(string: message)
        
        // Speak the message
        synthesizer.speak(utterance)
    }


}

