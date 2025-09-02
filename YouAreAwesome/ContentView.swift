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
                    let messageA = "You Are Awesome!"
                    let messageB = "You Are Great!"
                    let iconA = "sun.max.fill"
                    let iconB = "hand.thumbsup"
                    
                    message = (message == messageA ? messageB : messageA)
                    icon = (icon == iconA ? iconB : iconA)
                    
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
