//
//  CustomButtonView.swift
//  hike
//
//  Created by Jonas Narbutas on 2023-12-04.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(LinearGradient(
                    colors: [
                        .white,
                        .customGrayLight,
                        .customGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom))
            Circle()
                .stroke(LinearGradient(
                    colors: [
                        .customGrayMedium,
                            .customGrayLight],
                    startPoint: .top,
                    endPoint: .bottom),
                        lineWidth: 4)
            Image(systemName: "flame")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(LinearGradient(
                    colors: [
                        .customGrayLight,
                        .customGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom
                ))
        } //ZSTACK
        .frame(width: 58, height: 58)
    }
}

struct CustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
