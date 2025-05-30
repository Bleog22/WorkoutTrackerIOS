//
//  subcategoryViewManager.swift
//  WorkOutTracker
//
//  Created by Bryan Galaviz on 5/30/25.
//

import Foundation
import SwiftUICore

@ViewBuilder

func viewForSubcategory(_ activity: Activity) -> some View {
    
    switch (activity.group, activity.name){
        
    case(.cardio, "Running"):
        runningView()
        
        
        

    default:
        Text("Coming soon for \(activity.name)")
        
    }
    
}


    


