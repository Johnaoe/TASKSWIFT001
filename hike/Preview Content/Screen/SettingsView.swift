//
//  SettingsView.swift
//  hike
//
//  Created by Jonas Narbutas on 2023-12-09.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
        //  MARK: - SECTION: HEADER
            Section{
                HStack{
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    VStack (spacing: -10){
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }
                .foregroundStyle(LinearGradient(
                    colors: [
                        .customGreenLight,
                        .customGreenMedium,
                        .customGreenDark],
                    startPoint: .top,
                    endPoint: .bottom) )
                .padding(.top, 8)
                
                VStack(spacing: 8){
                    Text("Where can you find \nperfect trackers?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("\"The journey of a thousand miles begins with a single step.\" – Lao Tzu.\n\"We don\'t stop hiking because we grow old, we grow old because we stop hiking.\\n\"When everything feels like an uphill struggle, think about the view from the top.\"\n\"Without new experiences, something inside of us sleeps.")
                        .font(.footnote)
                        .italic()
                    Text("Dust off the boots! It's time for a walk")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            } //: HEADER
            .listRowSeparator(.hidden)
        //  MARK: - SECTION: HEADER
        
        //  MARK: - SECTION: HEADER
        }
    }   //: LIST
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
