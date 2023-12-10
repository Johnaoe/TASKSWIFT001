//
//  SettingsView.swift
//  hike
//
//  Created by Jonas Narbutas on 2023-12-09.
//

import SwiftUI

struct SettingsView: View {
    //MARK: PROPERTIES
    
    private let alternateAppIcons: [String] = [
    "AppIcon-MagnifyingGlass",
    "AppIcon-Map",
    "AppIcon-Mushroom",
    "AppIcon-Camera",
    "AppIcon-Backpack",
    "AppIcon-Campfire",
    ]
    
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
            
            Section(header: Text("Alternate Icons")){
                ScrollView(.horizontal, showsIndicators: false){
                    HStack (spacing: 12) {
                        ForEach(alternateAppIcons.indices, id: \.self) { item in
                            Button {
                                print("icon \(alternateAppIcons[item]) was pressed")
                                UIApplication.shared.setAlternateIconName(alternateAppIcons[item]) {
                                    error in
                                    if error != nil {
                                        print("Failed requet to update the app's icon:\(String(describing: error?.localizedDescription))")
                                              } else {
                                            print ("Success! You did it \(alternateAppIcons[item])")
                                        }
                                }
                            } label: {
                                Image("\(alternateAppIcons[item])-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(16)
                            }
                        .buttonStyle(.borderless)
                        }
                    }
                }
                .padding(.top, 12)
                
                Text("Choose your favourit app icon from the collection above")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .font(.footnote)
                    .padding(.bottom, 12)
            } //:Section
            .listRowSeparator(.hidden)
        
        //  MARK: - SECTION: ABOUT
            Section (
            header: Text("About The APP"),
            footer: HStack{
                Spacer()
                Text("Copyright @ All rights reserved.")
                Spacer()
            }
                .padding(.vertical, 8)
            ){
                // 1. Basic labeled content
//                LabeledContent("Application", value: "Hike")
                
                CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "HIKE", rowTintColor: .blue)
                CustomListRowView(rowLabel: "Compatability", rowIcon: "info.circle", rowContent: "iOS, iPadOS", rowTintColor: .red)
                CustomListRowView(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                CustomListRowView(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                CustomListRowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "John Naoe", rowTintColor: .mint)
                CustomListRowView(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Petras Rob", rowTintColor: .indigo)
                CustomListRowView(rowLabel: "Website", rowIcon: "globe", rowTintColor: .indigo, rowLinkLabel: "Johnaoe", rowLinkDestination: "https://github.com/Johnaoe")
                // 2. Advandced lablede content

            }//: SECTION
        }
    }   //: LIST
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
