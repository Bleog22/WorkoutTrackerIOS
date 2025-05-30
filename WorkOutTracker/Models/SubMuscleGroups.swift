//
//  CardioGroups.swift
//  WorkOutTracker
//
//  Created by Bryan Galaviz on 5/30/25.
//

import Foundation


//Creating a new struct with 2 properties name (type string), image (type string)
struct CardioActivity: Identifiable {
    
    var id = UUID()
    var name: String
    var image: String
    
}

let cardioActivityArray: [CardioActivity] = [
    CardioActivity(name: "Running", image: "running"),
    CardioActivity(name: "Jump Rope", image: "jumpRope"),
    CardioActivity(name: "Cycling", image: "cycling"),
    CardioActivity(name: "Swimming", image: "swimming"),
    CardioActivity(name: "Elliptical", image: "elliptical"),
    CardioActivity(name: "Boxing", image: "boxing"),
    CardioActivity(name: "Walking", image: "walking"),
    CardioActivity(name: "Stairs", image: "stairs")
]

//Chest struct
struct ChestActivity: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

let chestActivityArray: [ChestActivity] = [
//    ChestActivity(name: String, image: String)
    
    
    
    
]


