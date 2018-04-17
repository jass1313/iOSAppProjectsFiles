//
//  ViewController.swift
//  Dicee
//
//  Created by Jasbeer Singh on 16/04/18.
//  Copyright © 2018 Jasbeer Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //creater verible in int only for contains the Data and for generate random number we creater these veribles (we need 1 to 6)
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice1", "dice2","dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //random By default When Start the app (2Ways)
//        randomDiceIndex1 = Int(arc4random_uniform(6))
//        randomDiceIndex2 = Int(arc4random_uniform(6))
//
//        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
//        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
//        2nd way
       updateDiceImages()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func rollButtonPressed(_ sender: Any) {
        //random images by click the button 2 ways
//        randomDiceIndex1 = Int(arc4random_uniform(6))
//        randomDiceIndex2 = Int(arc4random_uniform(6))
//
//        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
//        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
//        2nd way
      updateDiceImages()
    }
    
//    for random the image in view did load and roll button presses (2nd way) create the func is for group the same codes use more place
    func updateDiceImages(){
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    //motion and when shake the phone
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
       // 2nd way
        updateDiceImages()
    }
}











