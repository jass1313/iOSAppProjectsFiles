//
//  ViewController.swift
//  PickerViewDemo
//
//  Created by Jasbeer Singh on 26/03/18.
//  Copyright © 2018 Jasbeer Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {


    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var SelectedzPickerLabel: UILabel!
    
    var days: [String] = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return days.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let myDays = days[row]
        SelectedzPickerLabel.text = "\(myDays)"
        return myDays
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        SelectedzPickerLabel.text = "\(days[row])"
    }
}













