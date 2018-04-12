//
//  Course+CoreDataClass.swift
//  CourseBook
//
//  Created by Jasbeer Singh on 02/04/18.
//  Copyright © 2018 Jasbeer Singh. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Course)
public class Course: NSManagedObject {

    public override func awakeFromInsert() {
        super.awakeFromInsert()
        self.publisheddate = NSDate()
    }
    
    
    
    
}
