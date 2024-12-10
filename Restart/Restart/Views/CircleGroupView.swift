//
//  CircleGroupView.swift
//  Restart
//
//  Created by Hugo Rodrigues on 03/12/24.
//

import SwiftUI

struct CircleGroupView: View {
//    MARK: - PROPERTY
    
    @State var ShapeColor: Color
    @State var ShaperOpacity: Double
    @State private var isAnimating: Bool = false
    
//    MARK: - BODY
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(ShapeColor.opacity(ShaperOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(ShapeColor.opacity(ShaperOpacity), lineWidth: 80)
                .frame(width: 260, height: 260)
        } // : ZSTACK
        .blur(radius: isAnimating ? 0 : 10)
        .opacity(isAnimating ? 1 : 0)
        .scaleEffect(isAnimating ? 1 : 0.5)
        .animation(.easeOut(duration: 1), value: isAnimating)
        .onAppear(perform: {
            isAnimating = true
        })
    }
}

//   MARK: - PREVIEW

#Preview {
    ZStack {
        Color("ColorBlue")
            .ignoresSafeArea(.all, edges: .all)
        CircleGroupView(ShapeColor: .white, ShaperOpacity: 0.2)
    }
}
