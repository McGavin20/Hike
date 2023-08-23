//
//  SettingsView.swift
//  Hike
//
//  Created by Sharma on 16/08/2023.
//

import SwiftUI

struct SettingsView: View {
    
    private let alternateAppsIcons: [String] = [
        "AppIcon-MagnifyingGlass",
        "AppIcon-Map",
        "AppIcon-Mushroom",
        "AppIcon-Camera",
        "AppIcon-Backpack",
        "AppIcon-Campfire"
    ]
    
    var body: some View {
        List {
            //HEADER
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }//HSTACK
                .foregroundStyle(LinearGradient(colors: [
                    .customGreenLight,
                    .customGreenMedium,
                    .customGreenDark
                ], startPoint: .top, endPoint: .bottom))
                .padding(.top, 8)
                VStack(spacing: 8) {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            }//SECTION
            .listRowSeparator(.hidden)
            //ICONS
            Section(header: Text("Alternate Icons")) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(alternateAppsIcons.indices, id: \.self) { item in
                            Button {
                                print("Icon \(alternateAppsIcons[item]) was pressed")
                                UIApplication.shared.setAlternateIconName(alternateAppsIcons[item]) { error in
                                    if error != nil {
                                        print("Failed request to update the app's icon: \(String(describing: error?.localizedDescription))")
                                    } else {
                                        print("Success! You have changed the app's icon to \(alternateAppsIcons[item])")
                                    }
                                }
                                
                            } label: {
                                Image("\(alternateAppsIcons[item])-Preview")
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
                Text("Choose your favourite app icon from the collective above.")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .font(.footnote)
                    .padding(.bottom, 12)
            }
            .listRowSeparator(.hidden)
            
            //ABOUT
            Section(
                header: Text("ABOUT THE APP "), footer: HStack {
                    Spacer()
                    Text("Copyright All Rights Reserved.")
                    Spacer()
                }
                .padding(.vertical, 8)) {
                    //LabeledContent("Application", value: "Hike");
                    CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "HIKE", rowTintColor: .blue)
                    
                    CustomListRowView(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS", rowTintColor: .red)
                    
                    CustomListRowView(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                    
                    CustomListRowView(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                    
                    CustomListRowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "Sharma McGavin", rowTintColor: .mint)
                    
                    CustomListRowView(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Robert Petras", rowTintColor: .pink)
                    
                    CustomListRowView(rowLabel: "Website", rowIcon: "globe", rowContent: nil, rowTintColor: .pink, rowLinkLabel: "GitHub", rowLinkDestination: "https://github.com/McGavin20")

            }
        }//: LIST
       
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
