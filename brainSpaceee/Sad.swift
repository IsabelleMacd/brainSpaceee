//
//  Sad.swift
//  brainSpaceee
//
//  Created by Scholar on 6/29/23.
//

import SwiftUI

struct Sad: View {
    var body: some View {
        ZStack{
            Color(red: 0.278, green: 0.339, blue: 0.342)
                .edgesIgnoringSafeArea(.all)
            
            Text("Feeling sad?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.738, green: 0.64, blue: 0.676))
                .position( x: 200, y: 50)
            
            Text("Get support- It helps talk to someone who has a positive attitude when you’re sad.")
                .font(.headline)
                .foregroundColor(Color(red: 0.738, green: 0.64, blue: 0.676))
                .multilineTextAlignment(.center)
                .position( x: 180, y: 140)
                .padding()
            
            Text("Face it- Acknowledge what’s making you feel that way and problem solve around it. Spend time with people or things that make you happy!")
                .font(.headline)
                .foregroundColor(Color(red: 0.738, green: 0.64, blue: 0.676))
                .multilineTextAlignment(.center)
                .position( x: 180, y: 250)
                .padding()
            
            Text("-Boost your contentment by spending time with your loved ones and doing your favorite activities.")
                .font(.headline)
                .foregroundColor(Color(red: 0.738, green: 0.64, blue: 0.676))
                .multilineTextAlignment(.center)
                .position( x: 180, y: 360)
                .padding()
        
            
            
            
            
        }
        
        
    }
}





struct Sad_Previews: PreviewProvider {
    static var previews: some View {
        Sad()
    }
}
