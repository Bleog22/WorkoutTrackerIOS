//
//  subcategoryViewManager.swift
//  WorkOutTracker
//
//  Created by Bryan Galaviz on 5/30/25.
//

import Foundation
import SwiftUI


struct subcategoryViewManager {
    
    //EXPLAIN THIS WHOLE CODE 
    static let activityViews: [String: () -> AnyView] = [
        
        "Running": { AnyView(runningView()) }
        
        //add others
        
    ]
    
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


    


