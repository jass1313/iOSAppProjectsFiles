//
//  ViewController.swift
//  NavBarToolBar
//
//  Created by Jasbeer Singh on 27/03/18.
//  Copyright © 2018 Jasbeer Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

   

    @IBAction func sliderMoved(_ sender: Any) {
        number.text = "\(slider.value)"
    }
    
}

