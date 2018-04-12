//
//  CourseCell.swift
//  CourseBook
//
//  Created by Jasbeer Singh on 02/04/18.
//  Copyright © 2018 Jasbeer Singh. All rights reserved.
//

import UIKit

class CourseCell: UITableViewCell {

    

    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var courseName: UILabel!
    @IBOutlet weak var courseEmail: UILabel!
    @IBOutlet weak var coursePrice: UILabel!
    
    func fillCellWithData(Course: Course){
    
    courseName.text = Course.coursename
    courseEmail.text = Course.email
    coursePrice.text = "$ \(Course.price)"
        
        //            TODO:Set image later
    
    
    myImage.image = Course.courseToImage?.image as? UIImage
    }
    
    
}
