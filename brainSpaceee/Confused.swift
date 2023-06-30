//
//  Confused.swift
//  brainSpaceee
//
//  Created by Scholar on 6/29/23.
//

import SwiftUI

struct Confused: View {
    var body: some View {
        ZStack{
            Color(red: 0.278, green: 0.339, blue: 0.342)
                .edgesIgnoringSafeArea(.all)
            
            Text("Feeling Confused?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.738, green: 0.64, blue: 0.676))
                .position( x: 200, y: 50)
            Text("Sit at one place- Relaxing and taking things at a slower pace can help you think better.")
                .font(.headline)
                .foregroundColor(Color(red: 0.738, green: 0.64, blue: 0.676))
                .multilineTextAlignment(.center)
                .position( x: 180, y: 140)
                .padding()
            Text("Write it down- Confusing topics can seem a lot more baffled up in our heads than in reality. Try writing notes and processing them one at a time.")
                .font(.headline)
                .foregroundColor(Color(red: 0.738, green: 0.64, blue: 0.676))
                .multilineTextAlignment(.center)
                .position( x: 180, y: 250)
                .padding()
            Text("Don’t spend your time worrying on things that are out of your control- Focusing on things that you can’t do anything about is often harmful for your mental health.")
                .font(.headline)
                .foregroundColor(Color(red: 0.738, green: 0.64, blue: 0.676))
                .multilineTextAlignment(.center)
                .position( x: 180, y: 360)
                .padding()
        
            
            
            
        }
    }
}

struct Confused_Previews: PreviewProvider {
    static var previews: some View {
        Confused()
    }
}
