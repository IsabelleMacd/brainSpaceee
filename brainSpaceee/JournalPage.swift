//
//  JournalPage.swift
//  brainSpaceee
//
//  Created by Scholar on 6/30/23.
//

import SwiftUI

struct JournalPage: View {
@Environment(\.managedObjectContext) var context


@State private var showDetails = false
@State private var name = ""
@State private var isPresentingSad = false
@State private var isPresentingHappy = false
@State private var isPresentingAngry = false
@State private var isPresentingConfused = false

@FetchRequest(
        entity: ToDo.entity(), sortDescriptors: [ NSSortDescriptor(keyPath: \ToDo.id, ascending: false) ])
    
var entries: FetchedResults<ToDo>

@State private var showEntry = false
var body: some View {
    ZStack {
        Color(red: 0.278, green: 0.339, blue: 0.342)
            .edgesIgnoringSafeArea(.all)
        VStack {
            Image("maintext")
                .resizable()
                .frame(width: 410, height: 90)
            Text("how are you feeling?")
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(Color(red: 0.738, green: 0.64, blue: 0.676))
                .multilineTextAlignment(.center)
                .position( x: 200, y: 14)
            
            Button(action: {
                self.showEntry = true
            }) {
                Text("+")
                    .font(.largeTitle)
                    .foregroundColor(Color(red: 0.738, green: 0.64, blue: 0.676))
                    .position( x: 200, y: 10)
            }
            
            List {
                ForEach (entries) {
                    Journal in
                    Text(Journal.entry ?? "No Entry")
                }
                .onDelete(perform: deleteTask)
            }
            .padding()
            
            if showEntry {
                JournalView(entry: "", showEntry: $showEntry)
            }
        
                
                HStack{
                    VStack{
                        Image("numberfour")
                            .resizable()
                            .aspectRatio(contentMode: .fit) .frame(width: 80, height: 90)
                        
                        Button(action: {
                            isPresentingSad = true
                        }) {
                            Text("sad")
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.738, green: 0.64, blue: 0.676))
                        }
                        .font(.subheadline)
                        .buttonStyle(.borderedProminent)
                        .tint(Color(red: 0.362, green: 0.217, blue: 0.298))
                        .sheet(isPresented: $isPresentingSad) {
                            Sad()
                        }
                    }//end of VSTACK
                    VStack{
                        Image("numberone")
                            .resizable()
                            .aspectRatio(contentMode: .fit) .frame(width: 80, height: 90)
                        
                        Button(action: {
                            isPresentingHappy = true
                        }) {
                            Text("happy")
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.738, green: 0.64, blue: 0.676))
                        }
                        .font(.subheadline)
                        .buttonStyle(.borderedProminent)
                        .tint(Color(red: 0.362, green: 0.217, blue: 0.298))
                        .sheet(isPresented: $isPresentingHappy) {
                            Happy()
                        }
                        
                        
                    }
                    VStack{
                        Image("numbertwo")
                            .resizable()
                            .aspectRatio(contentMode: .fit) .frame(width: 80, height: 90)
                        
                        Button(action: {
                            isPresentingAngry = true
                        }) {
                            Text("angry")
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.738, green: 0.64, blue: 0.676))
                        }
                        .font(.subheadline)
                        .buttonStyle(.borderedProminent)
                        .tint(Color(red: 0.362, green: 0.217, blue: 0.298))
                        .sheet(isPresented: $isPresentingAngry) {
                            Angry()
                        }
                    }
                    VStack{
                        Image("numberthree")
                            .resizable()
                            .aspectRatio(contentMode: .fit) .frame(width: 80, height: 90)
                        Button(action: {
                            isPresentingConfused = true
                        }) {
                            Text("confused")
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.738, green: 0.64, blue: 0.676))
                        }
                        .font(.subheadline)
                        .buttonStyle(.borderedProminent)
                        .tint(Color(red: 0.362, green: 0.217, blue: 0.298))
                        .sheet(isPresented: $isPresentingConfused) {
                            Confused()
                        }
                    }
                    
                }//end of HStack
                //end of VStack
                
                //end of VStack
                
            } //end of ZStack
            
        }
    
    }
private func deleteTask(offsets: IndexSet) {
        withAnimation {
            offsets.map { entries[$0] }.forEach(context.delete)

            do {
                try context.save()
            } catch {
                print(error)
            }
        }
    }
}

struct JournalPage_Previews: PreviewProvider {
    static var previews: some View {
        JournalPage()
    }
}
