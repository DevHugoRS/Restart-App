//
//  ContentView.swift
//  Restart
//
//  Created by Hugo Rodrigues on 02/12/24.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView() // True = OnboardingView
                
            } else {
                HomeView() // False = Home Screem
            }
        }
    }
}

#Preview {
    ContentView()
}
