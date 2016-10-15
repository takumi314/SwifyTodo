//
//  UserModel.swift
//  SwifyTodo
//
//  Created by NishiokaKohei on 2016/10/12.
//  Copyright © 2016年 Kohey. All rights reserved.
//

import Foundation
import RealmSwift

/// Initialize the particular directory
let paths  = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask , true)
let path: String = paths[0] + "/swifyToDo.realm"
let url: NSURL = NSURL(fileURLWithPath:path)
let realm = try! Realm(fileURL: url)

class UserModel: Object {
    
    dynamic var id: Int =  0
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
