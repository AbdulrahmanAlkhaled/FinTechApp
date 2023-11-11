//
//  SendMoneyView.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 06/11/2023.
//

import SwiftUI

struct ConfirmSendMoneyView: View {
    var body: some View {
        VStack{
            HStack{
                Image("Image 13")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .frame(maxWidth: .infinity, alignment:.leading)
                Text("Send Money")
                    .font(.title3)
                    .bold()
                    .frame(maxWidth: .infinity)
                Spacer()
                Image("Image 14")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .frame(maxWidth: .infinity, alignment:.trailing)
            }.padding()
            
            HStack{
                Image("Image 16")
                    .resizable()
                    .frame(width: 80, height: 80)
                
                
                VStack{
                    Text("Jastan Beber")
                        .bold()
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    HStack{
                        Image("Image 17")
                            .resizable()
                            .frame(width: 40, height: 40)
                        VStack{
                            Text("Bank account number")
                                .font(.caption)
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("39020 0012")
                                .bold()
                                .font(.footnote)
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                }.padding(.horizontal, 10)
                Image(systemName: "arrow.left.arrow.right")
                    .foregroundStyle(.white)
                    .padding(.horizontal,6)
            }.padding(35)
                .background(RoundedRectangle(cornerRadius: 15.0)
                    .foregroundStyle(.color)
                    .frame(width: 354, height: 112)
                )
            VStack(spacing: 35){
                VStack{
                    Text("Send")
                        .bold()
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("980.00 USD")
                        .font(.title2)
                        .bold()
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }.padding(.horizontal,25)
                    .background(RoundedRectangle(cornerRadius: 15.0)
                        .foregroundStyle(.color2)
                        .frame(width: 354, height: 100))
                    .padding()
                
                VStack{
                    Text("Content")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical,10)
                    Text("The rule of thirds states that an image is most pleasing when its subjects or regions are")
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(.color3)
                }.padding(.horizontal,25)
                    .background(RoundedRectangle(cornerRadius: 15.0)
                        .foregroundStyle(.color1)
                        .frame(width: 354, height: 170))
                    .padding()
            }
            HStack(spacing: 80){
                Button {
                    
                }
            label: {
                ZStack{
                    HStack{
                        
                        Text("Quick Transfer")
                            .bold()
                            .foregroundColor(.white)
                        Image(systemName: "checkmark")
                            .bold()
                            .foregroundColor(.white)
                    }
                }
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(.color4)
                        .frame(width: 210, height: 56)
                    
                )
               
                
            }
                Button {
                    
                }
            label: {
                ZStack{
                    HStack{
                        
                        Text("Normal")
                            .bold()
                            .foregroundColor(.white)
                    }
                }
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(.color)
                        .frame(width: 130, height: 56)
                    
                )
                
                
            }.padding(.vertical)
                
                
            }.padding()
            Spacer()
            Button {
                
            }
                label: {
                    ZStack{
                        Text("Confirm")
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
            

        }
    }
}

#Preview {
    ConfirmSendMoneyView()
}
