//
//  SettingsView.swift
//  Hike
//
//  Created by made reihan on 17/12/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List{
            
            Section{
                
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading").font(.system(size: 80, weight: .black))
                    VStack(spacing:-10) {
                        Text("Hike").font(.system(size: 66, weight: .black))
                        
                        Text("Editors choice").fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing").font(.system(size: 80, weight: .black))
                    Spacer()
                }.foregroundStyle(
                    LinearGradient(colors: [.customGreenLight, .customGreenMedium, .customGreenDark], startPoint: .top, endPoint: .bottom)
                )
                .padding(.top,8)
                
                VStack(spacing:8){
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
            
            
        }
        
        
    }
    
    
}

#Preview {
    SettingsView()
}
