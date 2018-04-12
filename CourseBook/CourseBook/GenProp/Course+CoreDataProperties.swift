//
//  Course+CoreDataProperties.swift
//  CourseBook
//
//  Created by Jasbeer Singh on 02/04/18.
//  Copyright © 2018 Jasbeer Singh. All rights reserved.
//
//

import Foundation
import CoreData


extension Course {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Course> {
        return NSFetchRequest<Course>(entityName: "Course")
    }

    @NSManaged public var coursename: String?
    @NSManaged public var email: String?
    @NSManaged public var price: Double
    @NSManaged public var publisheddate: NSDate?
    @NSManaged public var courseToCategory: Category?
    @NSManaged public var courseToImage: Image?

}
