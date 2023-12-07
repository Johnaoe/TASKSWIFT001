//
//  GradientButtonView.swift
//  hike
//
//  Created by Jonas Narbutas on 2023-12-05.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
//                conditional statement with nil coalescing condition ? A:B
                configuration.isPressed ?
//                A: When user pressed the button
                LinearGradient(colors: [
                    .customGrayMedium,
                    .customGrayLight],
                    startPoint: .top,
                    endPoint: .bottom)
                :
//                B: When button is not pressed
                LinearGradient(colors: [
                    .customGrayLight,
                    .customGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom)
                )
            .cornerRadius(40)
    }
}
