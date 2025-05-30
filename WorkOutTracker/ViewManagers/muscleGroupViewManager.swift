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
    
    //Check kthe name of the group and return the appropriate view
    switch group.name {
        //If the groups name is "Cardio", then return the cardioSelectView
        
        //Same concept for the rest 
    case "Cardio":
        CardioSelectionView()
        
        // Default case for any other group not explicitly handled
        // Returns a Text view saying "Coming soon" with the group's name
    default:
        Text("Coming soon for \(group.name)")
    }
}


