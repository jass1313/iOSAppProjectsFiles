//
//  Course.swift
//  CourseBookNew
//
//  Created by Jasbeer Singh on 06/04/18.
//  Copyright © 2018 Jasbeer Singh. All rights reserved.
//

import Foundation
import RealmSwift

class Course: Object {
    @objc dynamic var name = ""
    @objc dynamic var email = ""
    @objc dynamic var price = ""
    
    @objc dynamic var imageNSData: NSData?
    
}
