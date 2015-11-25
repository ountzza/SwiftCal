//
//  ViewController.swift
//  SwiftCal
//
//  Created by Pondd on 11/25/2558 BE.
//  Copyright © 2558 Pondd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypingANumber: Bool = false

    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTypingANumber {
            display.text = display.text! + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTypingANumber = true
        }
        
        //print(digit)
    }
    
    var operandStack = Array<Double>()
    
    @IBAction func enter() {
        userIsInTheMiddleOfTypingANumber = false
        operandStack.append(display.text!)
    }
    
    var displayValue: Double {
        get {
            
        }
        set {
            
        }
    }
}

