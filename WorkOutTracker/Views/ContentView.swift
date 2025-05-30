//
//  ContentView.swift
//  WorkOutTracker
//
//  Created by Bryan Galaviz on 5/29/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        NavigationView() {
            ScrollView {
                LazyVStack {
                    //ForEach loop that loops through muscleGroupArray based on id
                    
                    ForEach(muscleGroupsArray, id: \.id){card in
                        
                        //Navigation link so we can navigate to new view when clicking on a card (This allows us to use the viewForMuscleGroup func
                        
                    
                        
                        //for destination we call the func viewForMuscleGroup which then passes through one of the arrays object (card) to then select a specfic view 
                        NavigationLink(destination:viewForMuscleGroup(card)){
                            //Creating a Genric Card View and passing in the 2 properties from the view (title, imageName)
                            
                            //In place of the name we have card.name card is a specific muscle group and .name is using the name property of the array to use as the cards title
                            
                            //Same concept for imageName
                            GenricCard(name: card.name, imageName: card.image)
                            
                        }
                        .frame(maxWidth:320)
                        
                        
                        .padding()
                    }
                    .navigationTitle(Text("Muscle Groups"))
                }
            }
            
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
        
    }
}

#Preview {
    ContentView()
}
