//
//  CardioSelectionView.swift
//  WorkOutTracker
//
//  Created by Bryan Galaviz on 5/29/25.
//

import SwiftUI

struct CardioSelectionView: View {
    var columns = [GridItem(.adaptive(minimum: 170), spacing: 20)]
    var body: some View {
        
      
        NavigationView() {
            ScrollView {
                LazyVGrid(columns: columns, spacing:20) {
                    ForEach(activitiesArray.filter({$0.group == .cardio}), id: \.id){group in
                        NavigationLink(destination: viewForSubcategory(group)) {
                            GenricCard(name: group.name, imageName: group.image)
                                
                                .frame(minWidth: 170)
                            
                                .padding(.horizontal)
                        }
                        
                    }
                    
                    .padding()
                }
            }
            .navigationTitle(Text("Cardio Activities"))
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
        
        
        
    }
}

#Preview {
  CardioSelectionView( )
}
