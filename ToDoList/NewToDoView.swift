//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Scholar on 5/11/25.
//

import SwiftUI

struct NewToDoView: View {
    var body: some View {
        Text("Task title:")
        
        TextField("Enter the task description...", text:  Value)
            .padding()
            .background(Color(.systemGroupedBackground))
            .cornerRadius(15)
            .padding()
        
        Toggle(isOn: Is On) {
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
