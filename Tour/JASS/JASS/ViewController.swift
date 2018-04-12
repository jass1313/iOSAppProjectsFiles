//
//  ViewController.swift
//  JASS
//
//  Created by Jasbeer Singh on 15/03/18.
//  Copyright © 2018 Jasbeer Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func lightsoutTapped(_ sender: Any) {
        
        self.view.backgroundColor = UIColor.black
    }
    
    @IBAction func lightsInTapped(_ sender: Any) {
        self.view.backgroundColor = UIColor.white
    }
    
}

