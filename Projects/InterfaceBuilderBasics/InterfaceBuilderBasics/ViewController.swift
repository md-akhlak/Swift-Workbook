//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by Batch - 1 on 17/09/24.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    @IBOutlet var myNameTextField: UITextField!
    
    
    @IBOutlet var myGreetingLabel: UILabel!
    
    
    @IBOutlet weak var myDeleteButtom: UIButton!
    
    
    @IBOutlet var myDeleteMsgLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        myDeleteMsgLabel.layer.borderWidth = 2.0      // Set the width of the border
//        myDeleteMsgLabel.layer.borderColor = UIColor.red.cgColor // Set the color of the border
//        myDeleteMsgLabel.layer.cornerRadius = 10.0
      
        
    }
    
    
    @IBAction func myDeleteButtonTapped(_ sender: Any) {
        print("Button is tapped")
        myDeleteMsgLabel.text = "Msg deleted succefully"
    }
    
     
    
    @IBAction func greetNameButton(_ sender: Any) {
        
        myGreetingLabel.text = "Hii, " + myNameTextField.text! + "!!"
        
    }
    


}

