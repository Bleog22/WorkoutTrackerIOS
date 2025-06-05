//
//  ContentView.swift
//  WorkOutTracker
//
//  Created by Bryan Galaviz on 5/29/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            TabView{
                MuscleGroupsView()
                    .tabItem{
                        Image(systemName: "dumbbell")
                        Text("Muscle Groups")
                        
                        
                        
                    }
                
                ProgressView()
                    .badge(1)
                    .tabItem{
                        Image(systemName: "chart.bar")
                        Text("Progress")
                            
                        
                    }
                WorkoutsView()
                    .tabItem{
                        Image(systemName: "figure.strengthtraining.traditional")
                        Text("Workouts")
                        
                    }
                
                
            }
            
            
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    NavigationLink(destination: SettingsView()){
                        Image(systemName: "gearshape")
                            .padding()
                    }
                }
                
                ToolbarItem(){
                    NavigationLink(destination: MeView()){
                        Image(systemName: "person.crop.circle")
                            .padding()
                    }
                }
                
            }
            
            
        }
        
        
        
        
    }
}
#Preview {
    ContentView()
}
