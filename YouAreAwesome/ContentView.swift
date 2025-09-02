//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Eno Yoo on 8/25/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = "I am a programmer!"
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .frame(width: 200, height: 200)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
                .foregroundStyle(.black)
            
            Spacer()
            
            HStack {
                Button("Awesome!") {
                    message = "Awesome!"
                }
                .buttonStyle(.borderedProminent)
                .font(.title2)
                .tint(.orange)
                
                Button("Great!") {
                    message = "Great!"
                }
                .buttonStyle(.borderedProminent)
                .font(.title2)
                .tint(.orange)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
