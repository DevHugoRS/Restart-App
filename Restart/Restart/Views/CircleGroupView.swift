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
