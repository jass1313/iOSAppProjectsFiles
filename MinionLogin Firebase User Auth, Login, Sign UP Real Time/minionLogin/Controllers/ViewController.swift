//
//  ViewController.swift
//  minionLogin
//
//  Created by Jasbeer Singh on 10/04/18.
//  Copyright © 2018 Jasbeer Singh. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class ViewController: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func loginTapped(_ sender: Any) {
        
        if email.text == "" || password.text == "" {
        displayPopUp(title: "Missing INfo", message: "No fields can be empty")
        } else {
//            sign in
            Auth.auth().signIn(withEmail: email.text!, password: password.text!, completion: { (user, error) in
            if  error != nil {
                    if let myErr = error?.localizedDescription {
                         self.displayPopUp(title: "ERROR", message: myErr)
                    }
            } else {
//                perform a login
                print("########")
//                print(user)
                self.performSegue(withIdentifier: "successsegue", sender: nil)
                
                }
                
                })
            
        }
        
    
    
    }

    
    //    popUp message
    func displayPopUp(title: String, message: String){
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
    }

}


