//
//  SecondViewController.swift
//  passing-data
//
//  Created by Trevor Gevers on 6/25/19.
//  Copyright © 2019 Trevor Gevers. All rights reserved.
//

import UIKit

protocol CanReceive {
    func dataReceived(data: String)
}

class SecondViewController: UIViewController {

    var dataReceived: String = ""
    @IBOutlet weak var labelView2: UILabel!
    @IBOutlet weak var textView2: UITextField!
    var delegate: CanReceive?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelView2.text = dataReceived
        // Do any additional setup after loading the view.
    }
    

    @IBAction func passDataBack(_ sender: UIButton) {
        delegate?.dataReceived(data: textView2.text!)
        dismiss(animated: true, completion: nil)
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
