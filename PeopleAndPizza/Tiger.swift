//
//  Tiger.swift
//  PeopleAndPizza
//
//  Created by Henry Chan on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Tiger {
    
    var name : String
    var isHungry : Bool
    
    
    init (name:String, isHungry:Bool) {
        
        self.name = name
        self.isHungry = true
    }
        
        
    func eat() {
        
        isHungry = false
    }
    
}






