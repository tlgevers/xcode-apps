//
//  SecondViewController.swift
//  segues
//
//  Created by Trevor Gevers on 6/24/19.
//  Copyright © 2019 Trevor Gevers. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var view2Label: UILabel!
    
    var textPassedOver: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view2Label.text = textPassedOver
        // Do any additional setup after loading the view.
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
