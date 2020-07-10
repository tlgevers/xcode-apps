//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Trevor Gevers on 6/13/19.
//  Copyright © 2019 Trevor Gevers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerImage: UIImageView!
    
    var ballRandomIndex: Int = 0
    
    let balls = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func askAQuestion(_ sender: Any) {
        print("a question was asked")
        updateImage()
    }
    
    func updateImage() {
        ballRandomIndex = Int.random(in: 0 ... 4)
        answerImage.image = UIImage(named: balls[ballRandomIndex])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateImage()
    }
}

