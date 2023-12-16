//
//  CardView.swift
//  Hike
//
//  Created by made reihan on 16/12/23.
//

import Foundation
import SwiftUI

struct CardView:View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
                
                VStack(alignment:.leading) {
                    HStack {
                        Text("Hiking").fontWeight(.black).font(.system(size: 52)).foregroundStyle(
                            LinearGradient(colors: [Color.customGrayLight,Color.customGrayMedium], startPoint: .top, endPoint: .bottom)
                        )
                        
                        Spacer()
                        
                        Button{
                            print("press")
                        } label: {
                            CustomButtonView()
                        }
                        
                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and families.").multilineTextAlignment(.leading).italic().foregroundColor(.customGrayMedium)
                }.padding(.horizontal,30)
                
                ZStack{
                    Circle().fill(
                        LinearGradient(colors: [Color("ColorIndigoMedium"),Color("ColorSalmonLight")], startPoint: .topLeading, endPoint: .bottomTrailing)
                    ).frame(width: 256, height: 256)
                    
                    
                    Image("image-1").resizable().scaledToFit()
                }
            }
        }.frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
