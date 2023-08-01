//
//  CardView.swift
//  Hike
//
//  Created by Sharma on 25/07/2023.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
                
            VStack {
                //: HEADER
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                        .fontWeight(.black)
                        .font(.system(size: 52))
                        .foregroundStyle( LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom))
                        Spacer()
                        Button {
                            print("The button was pressed.")
                        } label: {
                            CustomButtonView()
                        }
                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                .padding(.horizontal, 30)
                
                //: MAIN CONTENT
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(colors: [.customIndigoMedium, .customSalmonLight], startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .frame(width: 256, height: 256)
                    
                    
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
                
                //: FOOTER
                
                Button {
                    print("The button was pressed.")
                } label: {
                    Text("Explore More")
                    
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(colors: [ .customGreenLight,
                                                     .customGreenMedium], startPoint: .top, endPoint: .bottom)
                        )
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                }
                .padding(.vertical)
                .padding(.horizontal, 30)
                .background(
                    LinearGradient(colors: [ .customGrayLight,
                                             .customGrayMedium], startPoint: .top, endPoint: .bottom)
)
                .cornerRadius(40)
            }
        }//: CARD
        .frame(width: 320, height: 570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
