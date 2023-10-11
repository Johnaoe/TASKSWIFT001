//
//  CutomBackgroundView.swift
//  hike
//
//  Created by Jonas Narbutas on 2023-10-11.
//

import SwiftUI

struct CutomBackgroundView: View {
    var body: some View {
        ZStack {
//            MARK: - 3. DEPTH
            
            Color("ColorGreenDark")
                .cornerRadius(40)
                .offset(y: 12)
            
//            MARK: - 2. LIGHT
            
            Color("ColorGreenLight")
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            
//            MARK: - 1. SURFACE
            
            LinearGradient(
                colors: [
                Color("ColorGreenLight"),
                Color("ColorGreenMedium")],
                startPoint: .top,
                endPoint: .bottom)
            .cornerRadius(40)
        }
    }
}

struct CutomBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CutomBackgroundView()
            .padding()
    }
}
