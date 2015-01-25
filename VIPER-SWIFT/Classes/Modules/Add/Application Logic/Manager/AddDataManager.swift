//
//  AddDataManager.swift
//  VIPER-SWIFT
//
//  Created by Conrad Stoll on 6/4/14.
//  Copyright (c) 2014 Mutual Mobile. All rights reserved.
//

import Foundation
import CoreData

class AddDataManager : NSObject {
 
    var dataStore : CoreDataStore?
    
    func addNewEntry(entry: TodoItem) {
    
        if let ne = dataStore?.newTodoItem() {
            
            ne.name = entry.name
            ne.date = entry.dueDate;
            
            dataStore?.save()
        }
    }
}