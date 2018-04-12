//
//  DetailVC.swift
//  TableViewDemo
//
//  Created by Jasbeer Singh on 28/03/18.
//  Copyright © 2018 Jasbeer Singh. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    
    @IBOutlet weak var heroLebal: UILabel!
    var heroName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        heroLebal.text = "\(heroName)"
        
        if heroName == "Hulk" {
            self.view.backgroundColor = UIColor.gray
        }
        if heroName == "Batman" {
            self.view.backgroundColor = UIColor.black
        }
        if heroName == "Thor" {
            self.view.backgroundColor = UIColor.blue
        }
            
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
