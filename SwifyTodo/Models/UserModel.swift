//
//  UserModel.swift
//  SwifyTodo
//
//  Created by NishiokaKohei on 2016/10/12.
//  Copyright © 2016年 Kohey. All rights reserved.
//

import Foundation
import RealmSwift

class UserModel: Object {
    
    dynamic var id: Int = 0
    dynamic var name: String? = ""
    dynamic var password: String? = ""
    dynamic var created: NSDate = NSDate()
    dynamic var modified: NSDate = NSDate()
    
    // Relationship with TaskModel
    let tasks = List<TaskModel>()
    
    // Set the primary key at "id"
    override static func primaryKey() -> String? {
        return "id"
    }
    
}
