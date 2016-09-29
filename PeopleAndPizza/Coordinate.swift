//
//  Coordinate.swift
//  PeopleAndPizza
//
//  Created by Henry Chan on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation



class Coordinate {
    
    var latitude:Double
    var longitude:Double
    
    
    init (latitude:Double, longitude:Double) {
        
        self.latitude = 0.0
        self.longitude = 0.0
    }
    
    
    var isInNorthernHemisphere:Bool {
        
        if latitude > 0 {
            
            return true
        }
        return false
    }
    
    
    var isInSoutherHemisphere:Bool {


        if latitude < 0 {
            
            return true
        }
        
        return false

    }
    
    
    var isInWesternHemisphere:Bool {
        
        if longitude > 0 {
            
            return true
        }
        
        return false
    }
    
    
    
    var isInEasternHemisphere:Bool {
        
        if longitude < 0 {
            
            return true
        }
        
        return false
    }

    
    
    func distanceTo(coordinate:Coordinate) -> Double {
        
        let distance = acos(sin(self.latitude) * sin(coordinate.latitude) + cos(self.latitude) * cos(coordinate.latitude) * cos(self.longitude-coordinate.longitude)) * 6371000 / 1000
    
        return distance
    
    }
    
    
}


