//
//  SubGroupSelectionView.swift
//  WorkOutTracker
//
//  Created by Bryan Galaviz on 5/30/25.
//



import SwiftUI

struct SubGroupSelectionView: View {
    var groupType: ActivityType
    var columns = [GridItem(.adaptive(minimum: 170), spacing: 20)]
    var body: some View {
        
        
        NavigationView() {
            ScrollView {
                LazyVGrid(columns: columns, spacing:20) {
                    ForEach(activitiesArray.filter({$0.group == groupType}), id: \.id){group in
                        //EXPLAIN THIS
                        NavigationLink(destination: subcategoryViewManager.view(for:(group))) {
                            //AND THIS
                            GenricCard(name: group.name, imageName: group.image)
                            
                                .frame(minWidth: 170)
                            
                                .padding(.horizontal)
                        }
                        
                    }
                    
                    .padding()
                }
            }
            .navigationTitle(Text("\(groupType.rawValue.capitalized) Activities"))
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
        
        
    }
}

#Preview {
    SubGroupSelectionView(groupType: .core)
}
