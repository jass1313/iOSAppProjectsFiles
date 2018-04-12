//
//  AddTaskVC.swift
//  SmileyList
//
//  Created by Jasbeer Singh on 01/04/18.
//  Copyright © 2018 Jasbeer Singh. All rights reserved.
//

import UIKit

class AddTaskVC: UIViewController {


    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var needSmiley: UISwitch!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func savedTapped(_ sender: Any) {
        
        let guest = UIApplication.shared.delegate as! AppDelegate
        
        let context = guest.persistentContainer.viewContext
        
        let task = Task(context: context)

        if let name = textField.text {
            task.name = name 
        }
        task.smiley = needSmiley.isOn
        
        guest.saveContext()
        
        navigationController?.popViewController(animated: true)
        
    }
    

}





















