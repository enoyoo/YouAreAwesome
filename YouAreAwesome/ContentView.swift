//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Eno Yoo on 8/25/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            
            Spacer()
            
            HStack {
                Button("Show Message") {
                    let messageA = "You Are Awesome!"
                    let messageB = "You Are Great!"

                    message = (message == messageA ? messageB : messageA)
                    
                    imageName = "image\(imageNumber)"
                    
                    imageNumber += 1
                    
                    if imageNumber > 9 {
                        imageNumber = 0
                    }
                    
                }
                .buttonStyle(.borderedProminent)
                .font(.title2)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
