//
//  GreenViewController.swift
//  ProgramaticSegue
//
//  Created by Batch - 1 on 19/11/24.
//

import UIKit

class GreenViewController: UIViewController {

    @IBOutlet var textFieldOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as? MintViewController
        destinationVC?.navigationItem.title = textFieldOutlet.text
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
