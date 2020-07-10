//
//  ViewController.swift
//  segues
//
//  Created by Trevor Gevers on 6/24/19.
//  Copyright © 2019 Trevor Gevers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var passThisOn: String?

    @IBOutlet weak var textInput: UITextField!
    
    override func viewDidLoad() {
        passThisOn = "Some Info from View 1"
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondScreen" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.textPassedOver = textInput.text
        }
    }
}

