//
//  ContentView.swift
//  Apple Game
//
//  Created by Jared Lane on 12/14/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var credits = 1000
    @State var slot1 = 1
    @State var slot2 = 1
    @State var slot3 = 1
    
    var body: some View {
        
        VStack(spacing: 20.0) {
            Spacer()
            Text("SwiftUI slots").font(.largeTitle)
            Spacer()
            
            // This is the first time I'm showing you this:
            // Substitute variables/properties into a string with \(var)
            Text("Credits \(credits)")
            
            HStack {
                // The images were too wide to begin with so make sure you
                // add the resizable and aspectRatio modifiers
                Image("fruit\(slot1)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Image("fruit\(slot2)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Image("fruit\(slot3)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            Spacer()
            Button("Spin")  {
                
                
                // ranmdomize my numbers
                slot1 = Int.random(in: 1...3)
                slot1 = Int.random(in: 1...3)
                slot1 = Int.random(in: 1...3)
                
                //update the credits
                if slot1 == slot2 && slot2 == slot3 {
                    
                    //match
                    credits += 15
                }
                else {
                    credits -= 5
                }
            }
            // Set padding for all edges
            .padding()
            // Then adjust the left and right padding to be bigger
            .padding([.leading, .trailing], 40)
            .foregroundColor(.white)
            .background(Color(.systemPink))
            .cornerRadius(25)
            .font(.system(size: 18, weight: .bold, design: .default))
            Spacer()
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
