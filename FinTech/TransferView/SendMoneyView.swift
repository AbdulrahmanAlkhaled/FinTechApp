//
//  SendMView.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 09/11/2023.
//

import SwiftUI

struct SendMoneyView: View {
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
            
            VStack{
                HStack(spacing: -5){
                    TextField("amount", text: .constant(""))
                        .foregroundColor(Color.gray)
                        .frame(width: 100)
                    
                    Text("USD")
                        .bold()
                }      .frame(maxWidth: .infinity, alignment: .center)
                
                Divider()
                    .frame(width: 210)
                Text("Will send")
                    .foregroundStyle(.color3)
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
            Button {
                
            }
                label: {
                    ZStack{
                        HStack{
                            Text("Send")
                                .bold()
                               // .frame(maxWidth: .infinity)
                                .foregroundColor(.white)
                            Image(systemName: "arrow.right")
                                .foregroundStyle(.white)
                        }

                    }
                            .background(
                            RoundedRectangle(cornerRadius: 115)
                            .fill(.color4)
                            .frame(width: 183, height: 60)
                            )
                            .padding()
                }
            
            Spacer()
        }
    }
}

#Preview {
    SendMoneyView()
}
