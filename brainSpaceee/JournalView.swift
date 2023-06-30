//
//  JournalView.swift
//  brainSpaceee
//
//  Created by Scholar on 6/29/23.
//

import SwiftUI

struct JournalView: View {
    @Environment(\.managedObjectContext) var context
    @State var entry: String
    @Binding var showEntry: Bool
    var body: some View {
        VStack{
            Text("type here!")
                .foregroundColor(Color(red: 0.738, green: 0.64, blue: 0.676))
            TextField("describe yourself", text: $entry, axis: .vertical)
                .textFieldStyle(.roundedBorder)
                .cornerRadius(15)
                .padding()
                .background(Color(.systemGroupedBackground))
                
            Button(action: {
                self.showEntry = false
                self.addEntry(entry: self.entry)
            }) {
                Text("add")
            }
        }
    }
    private func addEntry(entry: String) {
        let task = ToDo(context: context)
        task.id = UUID()
        task.entry = entry
        do {
                    try context.save()
        } catch {
                    print(error)
        }
        }
}


struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView(entry: "", showEntry: .constant(true))
    }
}
