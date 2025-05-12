//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Scholar on 5/11/25.
//

import SwiftUI
import SwiftData
struct NewToDoView: View {
    @State private var title = ""
    @State private var isImportant = false
    @Binding var showNewTask: Bool
    @Bindable var toDoItem: ToDoItem
    @Environment(\.modelContext) var modelContext
    var body: some View {
        Text("Task title:")
        
        TextField("Enter the task description...", text:  $toDoItem.title, axis: .vertical)
            .padding()
            .background(Color(.systemGroupedBackground))
            .cornerRadius(15)
            .padding()
        
        Toggle(isOn: $toDoItem.isImportant) {
            Text("Is it important?")
        }
        .padding()
        
        Button {
            addToDo()
            showNewTask = false
        } label: {
            Text("Save")
            
        }
    }
    func addToDo() {
        let toDo = ToDoItem(title: toDoItem.title, isImportant: toDoItem.isImportant)
        modelContext.insert(toDo)
    }
}

#Preview {
    NewToDoView(showNewTask: .constant(false), toDoItem: ToDoItem(title: "", isImportant: false))
}
