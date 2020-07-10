//
//  ViewController.swift
//  calculate-it
//
//  Created by Trevor Gevers on 6/17/19.
//  Copyright © 2019 Trevor Gevers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var results: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clearToZero(_ sender: Any) {
        results.text = "0"
    }
    
}

