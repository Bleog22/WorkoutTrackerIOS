//
//  subcategoryViewManager.swift
//  WorkOutTracker
//
//  Created by Bryan Galaviz on 5/30/25.
//

import Foundation
import SwiftUI

    // This struct manages which view to show based on selected activity
struct subcategoryViewManager {
    
   // A dictionary mapping activitiy names to closures that return views
    //Key is the activity name e.g. (Running)
    //value is a closure that returns the corresponding view
    //wrapping it in a AnyView to allow different view types in the same dictionary
    //view must already exist e.g. (runningView())
    static let activityViews: [String: () -> AnyView] = [
        
        
        "Running": { AnyView(runningView()) }
        
        //add others
        
    ]
    
    //Function returns the approptiate view for a given Activity Object (found in SubMuscleGroups.swift)
    //Uses the activity name to look up view in our dictionary
    //If it finds a view it will return it
    @ViewBuilder
    static func view(for activity: Activity) -> some View {
        if let createView = activityViews[activity.name] {
            createView()
        }
        else{
            Text("View coming soon for \(activity.name)")
        }
    }
    
    
    
}


    


