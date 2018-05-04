//
//  ViewController.swift
//  USARegister
//
//  Created by Jasbeer Singh on 26/03/18.
//  Copyright © 2018 Jasbeer Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var selectState: UIButton!
    
    var states = ["Alabama",
                  "Alaska",
                  "Arizona",
                  "Arkansas",
                  "California",
                  "Colorado",
                  "Connecticut",
                  "Delaware",
                  "Florida",
                  "Georgia",
                  "Hawaii",
                  "Idaho",
                  "Illinois",
                  "Indiana",
                  "Iowa",
                  "Kansas",
                  "Kentucky",
                  "Louisiana",
                  "Maine",
                  "Maryland",
                  "Massachusetts",
                  "Michigan",
                  "Minnesota",
                  "Mississippi",
                  "Missouri",
                  "Montana",
                  "Nebraska",
                  "Nevada",
                  "New Hampshire",
                  "New Jersey",
                  "New Mexico",
                  "New York",
                  "North Carolina",
                  "North Dakota",
                  "Ohio",
                  "Oklahoma",
                  "Oregon",
                  "Pennsylvania",
                  "Rhode Island",
                  "South Carolina",
                  "South Dakota",
                  "Tennessee",
                  "Texas",
                  "Utah",
                  "Vermont",
                  "Virginia",
                  "Washington",
                  "West Virginia",
                  "Wisconsin",
                  "Wyoming"]
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
        return states.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let States = states[row]
        return States
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let state = states[row]
        selectState.setTitle(state, for: .normal)
//        pickerView.isHidden = true
    }
//    this code dismiss the keyboard when tap on touch
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    @IBAction func registerTapped(_ sender: Any) {
    
    let providedEmailAddress = email.text
    
    let isEmailAddressValid = isValidEmail(teststr: providedEmailAddress!)
    if isEmailAddressValid
    {
    print("Email is ok")
    } else {
    print("Email is not ok")
    }
    }
    
    @IBAction func selectstateTapped(_ sender: Any) {
        pickerView.isHidden = false
      
    }
    
    func validateMobile (value:String) ->Bool {
        let phone_Regex = "\\d{5}\\d{5}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", phone_Regex)
        let result = phoneTest.evaluate(with: value)
        return result
    }
//        or
    func isValidEmail(teststr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z-.%_]+@[A-Za-z0-9-]+.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format: "SELF MATCHES%@", emailRegEx)
        return emailTest.evaluate(with: teststr)
    }

}
