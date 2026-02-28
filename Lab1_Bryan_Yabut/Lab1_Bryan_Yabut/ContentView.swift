//
//  ContentView.swift
//  Lab1_Bryan_Yabut
//
//  Created by Bryan Yabut on 2026-02-28.
//

import SwiftUI

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
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
