//
//  ContentView.swift
//  Lab1_Bryan_Yabut
//
//  Created by Bryan Yabut on 2026-02-28.
//

import SwiftUI
internal import Combine

struct ContentView: View {
    // Game State
    @State private var currentNumber: Int = Int.random(in: 2...99)
    @State private var isPrimeNumber: Bool = false
    
    // Statistics
    @State private var correctAttempts: Int = 0
    @State private var wrongAttempts: Int = 0
    @State private var totalAttempts: Int = 0
    
    // UI State
    @State private var feedbackImage: String? = nil
    @State private var feedbackColor: Color = .clear
    @State private var showScoreAlert: Bool = false
    
    // Timer State
    @State private var timeRemaining = 5
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 40){
                Spacer().frame(height: 50)
                
                Text("\(currentNumber)")
                    .font(.system(size: 80, weight: .thin, design: .serif))
                    .italic()
                    .foregroundColor(Color(red: 0.0, green: 0.6, blue: 0.6))
                    .padding()
                VStack(spacing: 30){
                    Button(action: {
                        checkAnswer(userSelectedPrime: true)
                    }) {
                        Text("Prime")
                            .font(.system(size: 30, weight: .light, design: .serif))
                            .italic()
                            .foregroundColor(Color(red: 0.0, green: 0.6, blue: 0.6))
                    }
                    
                    Button(action: {
                        checkAnswer(userSelectedPrime: false)
                    }) {
                        Text("non Prime")
                            .font(.system(size: 30, weight: .light, design: .serif))
                            .italic()
                            .foregroundColor(Color(red: 0.0, green: 0.6, blue: 0.6))
                    }

                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
