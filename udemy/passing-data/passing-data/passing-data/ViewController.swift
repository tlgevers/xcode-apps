//
//  ViewController.swift
//  passing-data
//
//  Created by Trevor Gevers on 6/25/19.
//  Copyright © 2019 Trevor Gevers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CanReceive {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var labelView1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func view1ButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "switchToView2", sender: self)
    }
    
    @IBAction func setBackgroundToGreen(_ sender: UIButton) {
        self.view.backgroundColor = UIColor.green
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "switchToView2" {
            let secondVC = segue.destination as! SecondViewController
            // text input will contain empty string if nothing added
            secondVC.dataReceived = textField.text!
            secondVC.delegate = self
        }
    }
    
    func dataReceived(data: String) {
        labelView1.text = data
    }
}

