//
//  ContentView.swift
//  Atelier6-State
//
//  Created by CHEBIHI FAYCAL on 11/5/2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var theTask = Task(name: "Learn IOS with SwiftUI", isComplete: false, lastComplete: nil)
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: theTask.isComplete ? "checkmark.square" : "square")
                Text(theTask.name)
            }
            ControlPanel(isComplete: self.$theTask.isComplete)
        }
    }
}

struct ControlPanel: View {
    @Binding var isComplete: Bool
    var body: some View {
        if(!isComplete){
            Button(action: {
                isComplete = true
            }){
                Text("Mark Complete")
            }.padding(.top)
        }else{
            Button(action: {
                isComplete = false
            }){
                Text("Reset")
            }.padding(.top)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
