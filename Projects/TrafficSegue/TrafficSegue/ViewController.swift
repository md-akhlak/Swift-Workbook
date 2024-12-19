//
//  ViewController.swift
//  TrafficSegue
//
//  Created by Batch - 1 on 18/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var textFieldOutlet: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        }
    
    @IBAction func unwindToRd(segue: UIStoryboardSegue) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        segue.destination.navigationItem.title = textFieldOutlet.text!
    }
    
    
    
        


}

