//
//  MuscleGroups.swift
//  WorkOutTracker
//
//  Created by Bryan Galaviz on 5/29/25.
//

import Foundation


//Creating a custom struct that has 3 properties
//Conforms to indetifiable so SwiftUI can uniquely identify each item in a list
struct MuscleGroup: Identifiable{
    
    var id = UUID()
    var name: String
    var image: String
    
}

//Creating a array, passing the object MuscleGroup and hard coding them in with the 2 properties
//(id automatically made) with UUID()
let muscleGroupsArray: [MuscleGroup] = [
    MuscleGroup(name:"Cardio", image: "cardio1"),
    MuscleGroup(name: "Chest", image: "chest1"),
    MuscleGroup(name: "Back", image: "back1"),
    MuscleGroup(name: "Shoulders", image: "shoulder1"),
    MuscleGroup(name: "Arms", image: "arms1"),
    MuscleGroup(name: "Legs", image: "legs1"),
    MuscleGroup(name: "Core", image: "core1"),
    MuscleGroup(name: "Other", image: "other1")
   ]
