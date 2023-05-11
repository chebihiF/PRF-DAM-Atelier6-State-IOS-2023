//
//  ContentView.swift
//  Atelier6-State
//
//  Created by CHEBIHI FAYCAL on 11/5/2023.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var theTask: Task
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: theTask.isComplete ? "checkmark.square" : "square")
                Text(theTask.name)
            }
            IntermediateSubView1()
        }
    }
}

struct IntermediateSubView1 : View {
  
    var body: some View{
        IntermediateSubView2()
    }
}

struct IntermediateSubView2 : View {
   
    var body: some View{
        IntermediateSubView3()
    }
}

struct IntermediateSubView3 : View {
    @EnvironmentObject var theTask: Task
    var body: some View{
        IntermediateSubView4()
    }
}

struct IntermediateSubView4 : View {
   
    var body: some View{
        IntermediateSubView5()
    }
}

struct IntermediateSubView5 : View {
  
    var body: some View{
        IntermediateSubView6()
    }
}

struct IntermediateSubView6 : View {
    @EnvironmentObject var theTask: Task
    func test(){
        theTask.isComplete = true
    }
    var body: some View{
        IntermediateSubView7()
        Button(action: {
            test()
        }){
            Text("Test")
        }
    }
}

struct IntermediateSubView7 : View {
 
    var body: some View{
        ControlPanel()
    }
}

struct ControlPanel: View {
    @EnvironmentObject var theTask: Task
    var body: some View {
        if(!theTask.isComplete){
            Button(action: {
                theTask.isComplete = true
            }){
                Text("Mark Complete")
            }.padding(.top)
        }else{
            Button(action: {
                theTask.isComplete = false
            }){
                Text("Reset")
            }.padding(.top)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let task = Task(name: "Learn IOS with SwiftUI", isComplete: false, lastComplete: nil)
        
        ContentView()
            .environmentObject(task)
    }
}
