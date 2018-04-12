//
//  Image+CoreDataProperties.swift
//  CourseBook
//
//  Created by Jasbeer Singh on 02/04/18.
//  Copyright © 2018 Jasbeer Singh. All rights reserved.
//
//

import Foundation
import CoreData


extension Image {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Image> {
        return NSFetchRequest<Image>(entityName: "Image")
    }

    @NSManaged public var image: NSObject?
    @NSManaged public var imageToCategory: Category?
    @NSManaged public var imageToCourse: Course?

}
