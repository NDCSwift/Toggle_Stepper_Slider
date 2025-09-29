//
    // Project: Toggle_Stepper_Slider
    //  File: SettingsDemo.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    
import SwiftUI

struct SettingsDemo: View {
    @State private var isDarkMode = false
    @State private var fontSize = 14
    @State private var brightness = 0.5

    var body: some View {
        VStack(spacing: 20) {
            Toggle("Dark Mode", isOn: $isDarkMode)
            Stepper("Font Size: \(fontSize)", value: $fontSize, in: 10...30)
            Slider(value: $brightness, in: 0...1)
        }
        .padding()
    }
}
#Preview{
    SettingsDemo()
}
