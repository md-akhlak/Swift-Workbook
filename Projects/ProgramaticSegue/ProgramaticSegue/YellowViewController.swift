//
//  YellowViewController.swift
//  ProgramaticSegue
//
//  Created by Batch - 1 on 19/11/24.
//

import UIKit

class YellowViewController: UIViewController {
    
    @IBOutlet var textFieldOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinatioVC = segue.destination as? MintViewController
        destinatioVC?.navigationItem.title = textFieldOutlet.text
        
      
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
