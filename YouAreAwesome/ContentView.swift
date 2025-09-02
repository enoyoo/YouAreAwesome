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
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            Button("Click Me!") {
                print("YOU CLICKED ME!!!")
                message = "Ouch!!!"
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
