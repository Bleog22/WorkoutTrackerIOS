//
//  subcategoryViewManager.swift
//  WorkOutTracker
//
//  Created by Bryan Galaviz on 5/30/25.
//

import Foundation
import SwiftUICore

@ViewBuilder

func viewForSubcategory(_ group: CardioActivity) -> some View {
    
    switch group.name{
        
    case "Running": runningView()
        
    default:
        Text("Coming soon for \(group.name)")
        
    }
    
}

