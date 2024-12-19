//
//  ViewController.swift
//  TwoButtons
//
//  Created by Batch - 1 on 10/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var labelOutlet: UILabel!
    
    @IBOutlet var textFieldOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func setTextButtonTapped(_ sender: Any) {
        if let text = textFieldOutlet.text {
        }
    }
    
    
        func clearTextButtonTapped(_ sender: Any) {
        textFieldOutlet.text = ""
    }
    
    
}

