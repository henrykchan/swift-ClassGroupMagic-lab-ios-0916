//
//  PizzaDeliveryService.swift
//  PeopleAndPizza
//
//  Created by Henry Chan on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class PizzaDeliveryService {
    
    var location : Coordinate
    
    var pizzasAvailable : Int
    
    
    
    init(location:Coordinate,pizzasAvailable:Int) {
        
        self.location = location
        
        self.pizzasAvailable = 10
    }
    
    
    
    func isInRange(destination:Coordinate) -> Bool {
        
        if location.distanceTo(coordinate: destination) > 5000 {
            
            return true
        }
        
        return false
    }
    
    
    func deliverPizzaTo(destination:Coordinate) -> Bool {
        
        if isInRange(destination: destination) {
            
            pizzasAvailable -= 1
            
            return true
        }
    
        return false
    
    }
}
