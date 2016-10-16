//
//  ViewController.swift
//  SwifyTodo
//
//  Created by NishiokaKohei on 2016/10/12.
//  Copyright © 2016年 Kohey. All rights reserved.
//

import UIKit
import RealmSwift

/// Initialize the particular directory
let paths  = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask , true)
let path: String = paths[0] + "/swifyToDo.realm"
let url: NSURL = NSURL(fileURLWithPath:path)

class ViewController: UIViewController {
    
    // Public properties
    let realm = try! Realm(fileURL: url)
    

    // Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        save()
        findAll()
        delete()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // Public methods
    
    internal func save() -> Void {

        let user = UserModel()
        user.name = "Joan"
        user.password = "gggg"
        
        do {
            try realm.write() {
                realm.add(user)
            }
        } catch {
            print("Failed to save something is wrong!")
        }
        
    }
    
    internal func findAll() -> Void {
        // Load all the data from swifyToDo.realm.realm
        let guys = realm.objects(UserModel)
        //Show logs in data loaded from Realm
        for guy in guys {
            print("Username : \(guy)")
        }
    }

    internal func delete() -> Void {
        
        do {
            let data = realm.objects(UserModel).last!
            
            try realm.write() {
                realm.delete(data)
            }
        } catch {
            print("Failed to delete")
        }
        
    }
    
    
    // Private methods
    
    private func connectRealm() -> Void {
    }
    
}

