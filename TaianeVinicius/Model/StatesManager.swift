//
//  StateManager.swift
//  TaianeVinicius
//
//  Created by DTI-DEV on 09/11/2018.
//  Copyright © 2018 TaianeVinicius. All rights reserved.
//

import CoreData

class StatesManager {
    
    static let shared = StatesManager()
    var states: [State] = []
    
    func loadStates(with context: NSManagedObjectContext) {
        let fetchRequest : NSFetchRequest<State> = State.fetchRequest()
        let sortDescriptor = NSSortDescriptor(key: "name", ascending: true)
        fetchRequest.sortDescriptors = [sortDescriptor]
        
        do {
            states = try context.fetch(fetchRequest)
            
        } catch {
            print(error.localizedDescription)
        }
    }
}
