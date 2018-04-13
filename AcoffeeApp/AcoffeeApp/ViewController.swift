//
//  ViewController.swift
//  AcoffeApp
//
//  Created by Jasbeer Singh on 20/03/18.
//  Copyright © 2018 Jasbeer Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var InputText: UITextField!
    @IBOutlet weak var pricePay: UILabel!
    @IBOutlet weak var errorlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        InputText.layer.cornerRadius = 15.0
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func PriceTapped(_ sender: Any) {
        
        if InputText.text == "" {
            errorlabel.text = "ਖਾਲੀ ਜਗਾ ਭਰੋ"
        } else {
            let input = Double(InputText.text!)
         pricePay.text = "\(input! * 5) $"
//            line to dismiss keyboard
            view.endEditing(true)
        }
    
    }
    
    
    

}

