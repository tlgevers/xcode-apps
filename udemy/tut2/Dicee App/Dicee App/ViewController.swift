//
//  ViewController.swift
//  Dicee App
//
//  Created by Trevor Gevers on 6/12/19.
//  Copyright © 2019 Trevor Gevers. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    var ref: DatabaseReference!
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func rollButtonAction(_ sender: Any) {
        // This will get executed when the button is pressed.
        updateDiceImages()
    }

    func updateDiceImages() {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        self.ref.child("rolls").childByAutoId().setValue(["diceIndex1": randomDiceIndex1, "diceIndex2": randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}

