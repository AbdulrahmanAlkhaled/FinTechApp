//
//  CongratulationsView.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 06/11/2023.
//

import SwiftUI

struct CongratulationsView: View {
    var body: some View {
        VStack{
            Text("Congratulations")
                .font(.title2)
                .bold()
            
            Spacer()
            Image("Image 26")
                .resizable()
                .frame(width: 340, height: 240)
                Spacer()
            Text("Saving 650 USD")
                .font(.title)
                .bold()
                .foregroundStyle(.color)
                .padding()
            HStack{
                Text("Congratulations!")
                    .bold()
                Text("You managed to")
                    .foregroundStyle(.color3)
            }
            Text("save $500 this month")
                .foregroundStyle(.color3)
            Spacer()
            Button {
                
            }
                label: {
                    ZStack{
                        Text("My Achievement")
                            .padding(20)
                            .bold()
                            .frame(maxWidth: .infinity)
                        .foregroundColor(.white)}
                            .background(
                            RoundedRectangle(cornerRadius: 15)
                            .fill(.color)
                                
                            )
                            .padding(.horizontal)
                }
            

        }.padding()
    }
}

#Preview {
    CongratulationsView()
}
