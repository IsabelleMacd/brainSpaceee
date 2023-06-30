//
//  Angry.swift
//  brainSpaceee
//
//  Created by Scholar on 6/29/23.
//

import SwiftUI

struct Angry: View {
    var body: some View {
        ZStack{
            Color(red: 0.278, green: 0.339, blue: 0.342)
                .edgesIgnoringSafeArea(.all)
            
            Text("Feeling Angry?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.738, green: 0.64, blue: 0.676))
                .position( x: 200, y: 50)
            Text("Focus on your breathing- take deep breaths and relax.")
                .font(.headline)
                .foregroundColor(Color(red: 0.738, green: 0.64, blue: 0.676))
                .multilineTextAlignment(.center)
                .position( x: 180, y: 140)
                .padding()
            Text("Express your concerns- After you’re calm, let the other person know what you believe to be unfair.")
                .font(.headline)
                .foregroundColor(Color(red: 0.738, green: 0.64, blue: 0.676))
                .multilineTextAlignment(.center)
                .position( x: 180, y: 250)
                .padding()
            Text("Stick with ‘I’ statements- Placing the blame on others will only increase the tension.")
                .font(.headline)
                .foregroundColor(Color(red: 0.738, green: 0.64, blue: 0.676))
                .multilineTextAlignment(.center)
                .position( x: 180, y: 360)
                .padding()
            

            
        
            
            
            
        }
    }
}

struct Angry_Previews: PreviewProvider {
    static var previews: some View {
        Angry()
    }
}
