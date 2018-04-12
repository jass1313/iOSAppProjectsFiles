//
//  SuccessVC.swift
//  minionLogin
//
//  Created by Jasbeer Singh on 10/04/18.
//  Copyright © 2018 Jasbeer Singh. All rights reserved.
//

import UIKit
import Firebase
import FirebaseStorage

class SuccessVC: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let storageRef = Storage.storage().reference()
        
        let tempImage = storageRef.child("jass/myimage.jpeg")
        
//        code for upload image
//        let image = UIImage(named: "image.jpeg")
//        let metadata = StorageMetadata()
//        metadata.contentType = "image/jpeg"
//
//        tempImage.putData(UIImageJPEGRepresentation(image!, 0.2)!, metadata: metadata) { (data, error) in
//            if error != nil {
//                print(error?.localizedDescription)
//            } else {
//                print("Upload Done Jass")
//            }
//        }
        
        
//        getting the image
        
        tempImage.getData(maxSize: 1*1024*1024) { (data, error) in
            if error != nil {
                print(error?.localizedDescription)
            } else {
                self.imageView.image = UIImage(data: data!)
            }
                        
        }
        
        
        
        
        
        
        // Do any additional setup after loading the view.
    }

   
    

   

}
