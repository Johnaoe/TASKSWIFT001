//
//  CardView.swift
//  hike
//
//  Created by Jonas Narbutas on 2023-10-11.
//

import SwiftUI

struct CardView: View {
//    MARK: - PROPERTIES
    
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet: Bool = false
    
//    MARK: - FUNCTIONS
    
    func randomImage() {
        print("---Button was pressed ---")
        print("---Status: Old Image Number = \(imageNumber) ---")
        
        repeat {
            randomNumber = Int.random(in: 1...5)
            print("Action: Random number")
        }
        while randomNumber == imageNumber
        imageNumber = randomNumber
                
                print("Result: New Image Number = \(imageNumber)")
                print("-- The end --")
                print("\n")
    }
    var body: some View {
//        MARK: - CARD
        
        ZStack {
            CustomBackgroundView()
            
            VStack {
                // MARK: - HEADER
                
                VStack (alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(colors: [
                                    .customGrayLight,
                                    .customGrayMedium,],
                                               startPoint: .top,
                           
                                               endPoint: .bottom))
                        
//                        Spacer()
                        Button {
                            print("The button was pressed")
                            isShowingSheet.toggle()
                        }
                    label: {
                            CustomButtonView()
                        }
                    .sheet(isPresented: $isShowingSheet) {
                        SettingsView()
                            .presentationDragIndicator(.visible)
                            .presentationDetents([.medium, .large])
                    }
                    }
                    Text("Lorem ipsum 50")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                
                // MARK: - MAIN CONTENT
                
                ZStack {
                    CustomCircleView()
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }
                // MARK: - FOOTER
                Button {
                    randomImage()
                } label: {
                  Text("Explore more")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            .linearGradient(colors: [
//                                .customGrayMedium,
//                                .customGrayLight,
                                .white
                            ],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                }
                .buttonStyle(GradientButton())
            }
        } //: CARD
        .frame(width: 320, height: 570)
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
