//
//  ContentView.swift
//  Atelier6-State
//
//  Created by CHEBIHI FAYCAL on 11/5/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var theTask = Task(name: "Learn IOS with SwiftUI", isComplete: false, lastComplete: nil)
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: theTask.isComplete ? "checkmark.square" : "square")
                Text(theTask.name)
            }
            ControlPanel(theTask: self.$theTask)
        }
    }
}

struct ControlPanel: View {
    @Binding var theTask: Task
    var body: some View {
        HStack{
            Button(action: {
                theTask.isComplete = true
            }){
                Text("Mark Complete")
            }.padding(.horizontal)
            
            Button(action: {
                theTask.isComplete = false
            }){
                Text("Reset")
            }
        }.padding(.top)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
