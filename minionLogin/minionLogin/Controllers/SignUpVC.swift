//
//  SignUpVC.swift
//  minionLogin
//
//  Created by Jasbeer Singh on 10/04/18.
//  Copyright © 2018 Jasbeer Singh. All rights reserved.
//

import UIKit
import FirebaseDatabase
import FirebaseAuth
import Firebase

class SignUpVC: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        // Do any additional setup after loading the view.
    }

    @IBAction func loginTapped(_ sender: Any) {
        
    }
    @IBAction func signUpTapped(_ sender: Any) {
//        displayPopUp(title: "test", message: "test was sucess")

//        if Blank email id password eror popUp
        if email.text == "" || password.text == ""{
            displayPopUp(title: "Missing Info", message: "No Field cam be empty")
        } else {
//            Create User
            Auth.auth().createUser(withEmail: email.text!, password: password.text!, completion: { (user, error) in
                if error != nil {
                    if let myErr = error?.localizedDescription {
                        self.displayPopUp(title: "Error", message: myErr)
                    }
                } else {
//                    print(user)
                    
//                    enter user in Data Base as well
                    
                    Database.database().reference().child("jass").child(user!.uid).child("email").setValue(self.email.text!)

                    
                    
                    
                    self.displayPopUp(title: "Success", message: "Now you can login")
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

