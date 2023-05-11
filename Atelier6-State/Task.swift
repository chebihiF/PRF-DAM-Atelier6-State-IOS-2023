//
//  Task.swift
//  Atelier6-State
//
//  Created by CHEBIHI FAYCAL on 11/5/2023.
//

import Foundation

class Task : ObservableObject {
    
    internal init(name: String, isComplete: Bool, lastComplete: Date? = nil){
        self.name = name
        self.isComplete = isComplete
        self.lastComplete = lastComplete
    }
    
    let name: String
    @Published var isComplete: Bool
    var lastComplete: Date?
}
