//
//  CardioGroups.swift
//  WorkOutTracker
//
//  Created by Bryan Galaviz on 5/30/25.
//

import Foundation


//Creating a new struct with 2 properties name (type string), image (type string)
struct CardioGroups: Identifiable {
    
    var id = UUID()
    var name: String
    var image: String
    
}

let cardioGroupsArray: [CardioGroups] = [
    CardioGroups(name: "Running", image: "running"),
    CardioGroups(name: "Jump Rope", image: "jumpRope"),
    CardioGroups(name: "Cycling", image: "cycling"),
    CardioGroups(name: "Swimming", image: "swimming"),
    CardioGroups(name: "Elliptical", image: "elliptical"),
    CardioGroups(name: "Boxing", image: "boxing"),
    CardioGroups(name: "Walking", image: "walking"),
    CardioGroups(name: "Stairs", image: "stairs")
]

