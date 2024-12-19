//
//  ViewController.swift
//  NumberGuessApp
//
//  Created by Batch - 1 on 18/09/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var guessNumber: UITextField!
    
    @IBOutlet var displayNumber: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        displayNumber.layer.borderWidth = 2.0
    }


    @IBAction func checkNumber(_ sender: Any) {
        var randomNumber = Int.random(in: 1...10)
        var checkRandom = Int(guessNumber.text!)
        
        if randomNumber == checkRandom{
            displayNumber.text = "you guess it correct"
        }else if checkRandom! < randomNumber{
            displayNumber.text = "random number is greater "
        }else if checkRandom! > randomNumber{
            displayNumber.text = "random number is smaller"
        }
        
    }
}

