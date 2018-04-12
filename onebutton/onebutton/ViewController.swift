//
//  ViewController.swift
//  onebutton
//
//  Created by Jasbeer Singh on 16/03/18.
//  Copyright © 2018 Jasbeer Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var buttonState = true
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBOutlet weak var buttonText: UIButton!
    

    @IBAction func buttonTapped(_ sender: Any) {
        
        if buttonState == true {
            self.view.backgroundColor = UIColor.black
            buttonText.setTitle("Sukhchain", for: .normal)
            buttonState = false
        } else {
            self.view.backgroundColor = UIColor.white
            buttonText.setTitle("Jasbeer", for: .normal)
            buttonState = true
        }
    }
}

