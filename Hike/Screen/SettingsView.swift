//
//  SettingsView.swift
//  Hike
//
//  Created by made reihan on 17/12/23.
//

import SwiftUI

struct SettingsView: View {
    private let alternateAppIcons: [String] = [
        "image-1",
        "image-2",
        "image-3",
        "image-4",
        "image-5",
    ]

    var body: some View {
        List {
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading").font(.system(size: 80, weight: .black))
                    VStack(spacing: -10) {
                        Text("Hike").font(.system(size: 66, weight: .black))

                        Text("Editors choice").fontWeight(.medium)
                    }

                    Image(systemName: "laurel.trailing").font(.system(size: 80, weight: .black))
                    Spacer()
                }.foregroundStyle(
                    LinearGradient(colors: [.customGreenLight, .customGreenMedium, .customGreenDark], startPoint: .top, endPoint: .bottom)
                )
                .padding(.top, 8)

                VStack(spacing: 8) {
                    Text("where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)

                    Text("the hike which looks gorgeous in photos but is even better once your are actually there. the hike that you hope to do again someday. \nfind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()

                    Text("Dust off the boots its time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)

                }.multilineTextAlignment(.center)
                    .padding(.bottom, 16)
                    .frame(maxWidth: .infinity)

            }.listRowSeparator(.hidden)

            // MARK: - SECTION: ICONS

            Section(header: Text("Alternate Icons")) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(alternateAppIcons.indices, id: \.self) { item in
                            Button {
                                print("ICON was pressed")
                            } label: {
                                Image("\(alternateAppIcons[item])")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(16)
                            }.buttonStyle(.borderless)
                        }
                    }
                }

                Text("choose icon do you want")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .font(.footnote)

            }.listRowSeparator(.hidden)

            // MARK: - SECTIONS: ABOUT

            Section(
                header: Text("ABOUT THE APP"),
                footer: HStack {
                    Spacer()
                    Text("Copyright © All right reserved.")
                    Spacer()
                }
            ) {
                // LabeledContent("Application",  value:"Hike")

                CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "HIKE", rowTintColor: .blue)

                CustomListRowView(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "IOS, IpadOS", rowTintColor: .red)

                CustomListRowView(rowLabel: "technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)

                CustomListRowView(rowLabel: "version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .mint)

                CustomListRowView(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Robert Petras", rowTintColor: .pink)

                CustomListRowView(rowLabel: "Website", rowIcon: "globe", rowTintColor: .indigo, rowLinkLabel: "Madee.my.id", rowLinkDestination: "https://madee.my.id")
            }
        }
    }
}

#Preview {
    SettingsView()
}
