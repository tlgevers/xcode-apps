//
//  ViewController.swift
//  firebase-auth
//
//  Created by Trevor Gevers on 6/25/19.
//  Copyright © 2019 Trevor Gevers. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn

class ViewController: UIViewController, GIDSignInUIDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().signIn()
        // Do any additional setup after loading the view.
        
    }


}

