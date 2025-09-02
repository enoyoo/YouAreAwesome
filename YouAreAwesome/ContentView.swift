//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Eno Yoo on 8/25/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var messageType = "A"
    @State private var message = ""
    @State private var icon = ""
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
                .foregroundStyle(.black)
            
            Spacer()
            
            HStack {
                Button("Press Me!") {
                    let messageA = "You Are Great!"
                    let messageB = "You Are Awesome!"
                    let iconA = "hand.thumbsup"
                    let iconB = "sun.max.fill"
                    
                    if messageType == "A" {
                        icon = iconB
                        message = messageB
                        messageType = "B"
                    }
                    else {
                        icon = iconA
                        message = messageA
                        messageType = "A"
                    }
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
