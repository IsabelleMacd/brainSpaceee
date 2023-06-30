//
//  Happy.swift
//  brainSpaceee
//
//  Created by Scholar on 6/29/23.
//

import SwiftUI

struct Happy: View {
    var body: some View {
        ZStack{
            Color(red: 0.278, green: 0.339, blue: 0.342)
                .edgesIgnoringSafeArea(.all)
            
            Text("Feeling Happy?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.738, green: 0.64, blue: 0.676))
                .position( x: 200, y: 50)
            Text("Work out- Exercise can help by reducing your anxiety and depression.")
                .font(.headline)
                .foregroundColor(Color(red: 0.738, green: 0.64, blue: 0.676))
                .multilineTextAlignment(.center)
                .position( x: 180, y: 140)
                .padding()
            Text("Go Outside- Being surrounded by clean air and nature has been known to quicker psychological stress recovery.")
                .font(.headline)
                .foregroundColor(Color(red: 0.738, green: 0.64, blue: 0.676))
                .multilineTextAlignment(.center)
                .position( x: 180, y: 250)
                .padding()
            Text("Treat Yourself!- Treating yourself every once in a while can increase your energy and lower your risk on illness ")
                .font(.headline)
                .foregroundColor(Color(red: 0.738, green: 0.64, blue: 0.676))
                .multilineTextAlignment(.center)
                .position( x: 180, y: 360)
                .padding()
            
        
            
            
            
        }
    }
}

struct Happy_Previews: PreviewProvider {
    static var previews: some View {
        Happy()
    }
}
