//
    // Project: Toggle_Stepper_Slider
    //  File: ContentView.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    

import SwiftUI

struct ContentView: View {
    @State private var sliderValue = 0.5
    @State private var count = 0
    @State private var isNotificationsEnabled = false
    var body: some View {
        VStack {
            

            Toggle("Enable Notifications", isOn: $isNotificationsEnabled)
                .tint(.pink)
                .padding()
            
            Stepper("Step by 5: \(count)", value: $count, in: 0...100, step: 5)

            Slider(value: $sliderValue, in: 0...100,
                   minimumValueLabel: Text("Low"),
                   maximumValueLabel: Text("High")) {
               
            }
                   .tint(.orange)
            
            Image(systemName: "sun.max.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .opacity(sliderValue)


        }
        .padding()
    }

}

#Preview {
    ContentView()
}
