//
//  muscleGroupViewManager.swift
//  WorkOutTracker
//
//  Created by Bryan Galaviz on 5/30/25.
//

import Foundation
import SwiftUI


@ViewBuilder

// function that returns a specific View based on the selected MuscleGroup
//Takes in one object(group) of type MuscleGroup from the muscleGroupArray
//Uses a seitch statment to determine which view to return depending on groups name
func viewForMuscleGroup(_ group: MuscleGroup) -> some View {
    
    //Check the name of the group and return the appropriate view
    switch group.name {
        //If the groups name is "Cardio", then return the  SubGroupSelectionView(groupType: .cardio)
        //Same concept for the rest
    case "Cardio":
        SubGroupSelectionView(groupType: .cardio)
    case "Chest":
        SubGroupSelectionView(groupType: .chest)
    case "Back":
        SubGroupSelectionView(groupType: .back)
    case "Shoulders":
        SubGroupSelectionView(groupType: .shoulder)
    case "Arms":
        SubGroupSelectionView(groupType: .arms)
    case "Legs":
        SubGroupSelectionView(groupType: .legs)
        case "Core":
        SubGroupSelectionView(groupType: .core)
    case "Other":
        SubGroupSelectionView(groupType: .other)
        
        // Default case for any other group not explicitly handled
        // Returns a Text view saying "Coming soon" with the group's name
    default:
        Text("Coming soon for \(group.name)")
    }
}


