//
//  Category+CoreDataProperties.swift
//  CourseBook
//
//  Created by Jasbeer Singh on 02/04/18.
//  Copyright © 2018 Jasbeer Singh. All rights reserved.
//
//

import Foundation
import CoreData


extension Category {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Category> {
        return NSFetchRequest<Category>(entityName: "Category")
    }

    @NSManaged public var name: String?
    @NSManaged public var categoryToCourse: Course?
    @NSManaged public var categoryToImage: Image?

}
