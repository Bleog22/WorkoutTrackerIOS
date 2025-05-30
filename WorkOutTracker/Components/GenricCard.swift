//
//  GenricCard.swift
//  WorkOutTracker
//
//  Created by Bryan Galaviz on 5/30/25.
//

import SwiftUI

struct GenricCard: View {
    let name: String
    let imageName: String
    
    var body: some View {
       
        ZStack(alignment: .bottom) {
            Image(imageName)
                .resizable()
                .cornerRadius(20)
                .scaledToFit()
                .frame(maxWidth:500)
            
       
             
                
                Text(name)
            .bold()
            .padding()
            .frame(maxWidth:400)
            .background(.ultraThinMaterial)
            .cornerRadius(20)
        }
        .shadow(radius: 5)
       
        
        
        
    }
}

#Preview {
    GenricCard(name: "Cardio", imageName: "cardio1")
}

