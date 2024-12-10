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
    @State private var isAnimating: Bool = false
    
//    MARK: - BODY
    
    var body: some View {
        VStack(spacing: 20){
            // MARK: - HEADER
            
            Spacer()
            
            ZStack {
                CircleGroupView(ShapeColor: .colorBlue, ShaperOpacity: 0.1)
                
                Image("focus")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .offset(y: isAnimating ? 35 : -35)
                    .animation(
                        Animation
                            .easeInOut(duration: 4)
                            .repeatForever()
                        , value: isAnimating
                    )
            }
            
            // MARK: - CENTER
            
            Text("The time that leads to mastery is dependent on the intensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            
            // MARK: - FOOTER
            
            Button(action: {
                withAnimation {
                    isOnboardingViewActive = true
                }
            }) {
                
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
                
            } //: BUTTON
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        } //: VSTACK
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: { isAnimating = true
            })
        })
    }
}
//    MARK: - PREVIEW
#Preview {
    HomeView()
}
