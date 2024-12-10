import UIKit

var greeting = "Hello, playground"
//
//  ViewController.swift
//  GreetingName
//
//  Created by Batch - 1 on 17/09/24.
//



class ViewController: UIViewController {

    @IBOutlet var myNameTextField: UITextField!
    @IBOutlet var myGreetingLabel: UILabel!
    @IBOutlet var greetingButton: UIButton!
    @IBOutlet var screeenOutlet: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        screeenOutlet.backgroundColor = .cyan
        myGreetingLabel.layer.borderWidth = 2.0
        myGreetingLabel.layer.borderColor = UIColor.red.cgColor
        myGreetingLabel.layer.cornerRadius = 10.0
        myGreetingLabel.layer.cornerRadius
        
    }

    @IBAction func myGreetingActionButton(_ sender: Any) {
        
        myGreetingLabel.text = "Hii "  + myNameTextField.text! + " !!"
        myGreetingLabel.font = .systemFont(ofSize: 49.0)
        
    }
    
    @IBOutlet var searchbar: UISearchBar!
}

