//
//  DepositsView2.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 09/11/2023.
//

import SwiftUI

struct DepositsView2: View {

        let numberButtons: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "﹒", "0", "←"]
    var body: some View {
        VStack{
            HStack{
                Image("Image 13")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .frame(maxWidth: .infinity, alignment:.leading)
                Text("Total balance")
                    .bold()
                    .frame(maxWidth: .infinity)
                Spacer()
                Image("Image 14")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .frame(maxWidth: .infinity, alignment:.trailing)
            }.padding()
            
            VStack{
                Image("Image 61")
                    .resizable()
                    .frame(width: 354, height: 144)
                
                Image("Image 62")
                    .resizable()
                    .frame(width: 375, height: 144)
            }
            LazyVGrid(columns: Array(repeating: GridItem(), count: 3), spacing: 10) {
                       ForEach(numberButtons, id: \.self) { number in
                           Button(action: {
                               // Handle button tap for the selected number
                               print("Tapped: \(number)")
                           }) {
                               Text(number)
                                   .font(.title)
                                   .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                                   .bold()
                                   .foregroundColor(.black)
                                   .cornerRadius(10)
                                   .padding(10)
                           }
                       }
                   }
            Button {
                
            }
        label: {
            ZStack{
                Text("Buy for 23.000 USD")
                    .padding(20)
                    .bold()
                    .frame(maxWidth: .infinity)
                .foregroundColor(.white)}
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(.black.opacity(0.89))
                
            )
            .padding()
        }
            Spacer()
        }
    }
}

#Preview {
    DepositsView2()
}
