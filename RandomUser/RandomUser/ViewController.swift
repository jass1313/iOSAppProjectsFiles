//
//  ViewController.swift
//  RandomUser
//
//  Created by Jasbeer Singh on 09/04/18.
//  Copyright © 2018 Jasbeer Singh. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    var firstname = ""
    var city = ""
    var gender = ""
    var phone = ""
    var email = ""
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = "https://randomuser.me/api"
        
        Alamofire.request(myURL).responseJSON { (response) in
//            print("##############")
//            print(response.request)
//            print("##############")
//            print(response.response)
//            print("##############")
//            print(response.data)
//            print("##############")
//            print(response.result)
//
//            if let JSON = response.result.value {
//                print("##############")
//                print("JSON: \(JSON)")
//            }
//
//        print(response)
//
//            let result = response.result
//
//
//            print(result.value)
            
            let result = response.result
//            print(result)
            
            if let jass = result.value as? Dictionary<String, AnyObject>{
//                print(jass)
            
                if let innerDictR = (jass["results"] as! NSArray)[0] as? Dictionary<String, AnyObject>{
//                    print(innerDictR)
                    if let webGender = innerDictR["gender"] as? String {
                        self.gender = webGender
                        print(self.gender)
                        
                    }
            }
        }
        
            if let jass = result.value as? Dictionary<String, AnyObject>{
                if let myNewDict = (jass["results"] as! NSArray)[0] as? Dictionary<String,AnyObject>{
                    if let webPhone = myNewDict["phone"] as? String {
                        self.phone = webPhone
                        print(self.phone)
                    }
                }
            }
     
            if let jass = result.value as? Dictionary<String, AnyObject>{
                if let myNewDict = (jass["results"] as! NSArray)[0] as? Dictionary<String, AnyObject>{
                    if let Name = myNewDict["name"] as? Dictionary<String,AnyObject>{
                        if let webFirst = Name["first"] as? String {
                            self.firstname = webFirst
                            print(self.firstname)
                    }
                }
            }
            
            
            
    }
}
}
}
