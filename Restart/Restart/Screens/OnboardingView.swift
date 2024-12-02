//
//  OnboardingView.swift
//  Restart
//
//  Created by Hugo Rodrigues on 02/12/24.
//

import SwiftUI

struct OnboardingView: View {
//   MARK: - PROPERTY
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
//   MARK: - BODY
    
    var body: some View {
        VStack(spacing: 8) {
            Text("Onboarding")
                .font(.largeTitle)
            
            Button(action: {
                isOnboardingViewActive = false
            }) {
                Text("Start")
            }
            
        } //: VSTACK
    }
}
//   MARK: - PREVIEW
#Preview {
    OnboardingView()
}
