//
//  TaskModel.swift
//  SwifyTodo
//
//  Created by NishiokaKohei on 2016/10/12.
//  Copyright © 2016年 Kohey. All rights reserved.
//

import Foundation
import RealmSwift

class TaskModel: Object {
    
    dynamic var id: Int = 0
    dynamic var name: String? = ""
    dynamic var task: String? = ""
    dynamic var due: String? = ""
    dynamic var created: NSDate = NSDate()
    dynamic var modified: NSDate = NSDate()
    
    // Set the primary key at "id"
    override static func primaryKey() -> String? {
        return "id"
    }

}
