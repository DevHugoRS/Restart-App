//
//  HomeView.swift
//  Restart
//
//  Created by Hugo Rodrigues on 02/12/24.
//

import SwiftUI

struct HomeView: View {
//    MARK: - PROPERTY
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    
//    MARK: - BODY
    
    var body: some View {
        VStack(spacing: 20){
            Text("HomeView")
                .font(.largeTitle)
            
            Button(action: {
                isOnboardingViewActive = true
            }) {
                Text("Restart")
            }
        }
    }
}
//    MARK: - PREVIEW
#Preview {
    HomeView()
}
