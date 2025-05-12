//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Scholar on 5/11/25.
//

import SwiftUI

struct NewToDoView: View {
    @State private var title = ""
    @State private var isImportant = false
    
    var body: some View {
        Text("Task title:")
        
        TextField("Enter the task description...", text:  $title)
            .padding()
            .background(Color(.systemGroupedBackground))
            .cornerRadius(15)
            .padding()
        
        Toggle(isOn: $isImportant) {
            Text("Is it important?")
        }
        .padding()
        
        Button {
        } label: {
            Text("Save")

        }
        
    }
}

#Preview {
    NewToDoView()
}
