//
//  ViewController.swift
//  xylophone
//
//  Created by Trevor Gevers on 6/17/19.
//  Copyright © 2019 Trevor Gevers. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
    
    var notes = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func triggerNote(_ sender: UIButton) {
        switchNote(note: sender.tag - 1)
    }
    
    func switchNote(note: Int) {
        playNote(note: notes[note])
//        switch note {
//        case 1:
//            print("1")
//            playNote(note: notes[0])
//            break
//        case 2:
//            print("2")
//            playNote(note: notes[1])
//            break
//        case 3:
//            playNote(note: notes[2])
//            break
//        case 4:
//            playNote(note: notes[3])
//            break
//        case 5:
//            playNote(note: notes[4])
//            break
//        case 6:
//            playNote(note: notes[5])
//            break
//        case 7:
//            playNote(note: notes[6])
//            break
//        default:
//            print("nothing matches")
//        }
    }
    
    func playNote(note: String) {
        if let noteURL = Bundle.main.url(forResource: note, withExtension: "wav") {
            var soundNote: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(noteURL as CFURL, &soundNote)
            AudioServicesPlaySystemSound(soundNote)
        }
    }
    
}

