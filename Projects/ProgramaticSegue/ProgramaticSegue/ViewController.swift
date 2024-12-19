//
//  ViewController.swift
//  ProgramaticSegue
//
//  Created by Batch - 1 on 19/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var textFieldOutlet: UITextField!
    @IBOutlet var switchOutlet: UISwitch!
    @IBOutlet var goToGreenButtonOutlet: UIButton!
    @IBOutlet var goToYellowButtonOutlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func yellowButtonTapped(_ sender: UIButton) {
        if switchOutlet.isOn{
            performSegue(withIdentifier: "yellow", sender: nil)
        }
        
    }
    
    
    @IBAction func greenButtonTapped(_ sender: UIButton) {
        if switchOutlet.isOn{
            performSegue(withIdentifier: "green", sender: nil)
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinatioVC = segue.destination as? GreenViewController
        destinatioVC?.navigationItem.title = textFieldOutlet.text
        
        let destinatioVC2 = segue.destination as? YellowViewController
        destinatioVC2?.navigationItem.title = textFieldOutlet.text
        
        let destinationVC3 = segue.destination as? MintViewController
        destinationVC3?.navigationItem.title = textFieldOutlet.text
    }
    
    
}

