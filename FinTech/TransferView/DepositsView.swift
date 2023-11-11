//
//  DepositsView.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 09/11/2023.
//

import SwiftUI

struct DepositsView: View {
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
            
            ZStack{
                Rectangle()
                    .frame(width: 354, height: 146)
                    .cornerRadius(20)
                    .foregroundStyle(.color)
                VStack(spacing:35){
                    HStack(spacing: 140){
                        Text("Enter amount")
                            .foregroundStyle(.white)
                        HStack{
                            Text("USD")
                            Image(systemName: "chevron.down")
                        }                            .foregroundStyle(.white)
                    }
                    Text("3.980.00 USD")
                        .bold()
                        .font(.title)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .frame(width: 305)
                }
            }
            VStack(spacing: 20){
                Text("Select frequency")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .bold()
                HStack(spacing: 40){
                    Text("3")
                        .font(.title)
                        .background(Circle()
                            .stroke(lineWidth: 1.0)
                            .frame(width: 80, height: 80)
                        ).frame(maxWidth: .infinity)
                    Text("6")
                        .font(.title)
                        .bold()
                        .foregroundStyle(.white)
                        .background(Circle()
                            .foregroundStyle(.black.opacity(0.9))
                            .shadow(radius: 5)
                            .frame(width: 85, height: 85)
                        ).frame(maxWidth: .infinity)
                    Text("9")
                        .font(.title)
                        .background(Circle()
                            .stroke(lineWidth: 1.0)
                            .frame(width: 80, height: 80)
                        ).frame(maxWidth: .infinity)
                    Text("12")
                        .font(.title)
                        .background(Circle()
                            .stroke(lineWidth: 1.0)
                            .frame(width: 80, height: 80)
                        ).frame(maxWidth: .infinity)
                }.padding()
            }.padding()
            
            VStack{
                Text("Interest frequency")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .bold()
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing:15){
                        ZStack{
                            Rectangle()
                                .frame(width: 163 ,height: 209)
                                .cornerRadius(15)
                                .foregroundStyle(.color2)
                            VStack(spacing:80){
                                Image("Image 56")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                    .frame(maxWidth: .infinity, alignment:. leading)
                                VStack{
                                    Text("25.45%")
                                        .font(.title2)
                                        .bold()
                                        .foregroundStyle(.white)
                                        .frame(maxWidth: .infinity, alignment:. leading)
                                    Text("Loan")
                                        .foregroundStyle(.white)
                                        .frame(maxWidth: .infinity, alignment:. leading)
                                }
                            }.frame(width: 140)
                        }
                        
                        ZStack{
                            Rectangle()
                                .frame(width: 163 ,height: 209)
                                .cornerRadius(15)
                                .foregroundStyle(.color)
                            VStack(spacing:80){
                                Image("Image 58")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                    .frame(maxWidth: .infinity, alignment:. leading)
                                VStack{
                                    Text("25.45%")
                                        .font(.title2)
                                        .bold()
                                        .foregroundStyle(.white)
                                        .frame(maxWidth: .infinity, alignment:. leading)
                                    Text("Interest rate")
                                        .foregroundStyle(.white)
                                        .frame(maxWidth: .infinity, alignment:. leading)
                                }
                            }.frame(width: 140)
                        }
                        ZStack{
                            Rectangle()
                                .frame(width: 163 ,height: 209)
                                .cornerRadius(15)
                                .foregroundStyle(.color4)
                            VStack(spacing:80){
                                Image(systemName: "square")
                                    .resizable()
                                    .foregroundStyle(.white)
                                    .frame(width: 20, height: 20)
                                    .frame(maxWidth: .infinity, alignment:. leading)
                                VStack{
                                    Text("25.45%")
                                        .font(.title2)
                                        .bold()
                                        .foregroundStyle(.white)
                                        .frame(maxWidth: .infinity, alignment:. leading)
                                    Text("Savings")
                                        .foregroundStyle(.white)
                                        .frame(maxWidth: .infinity, alignment:. leading)
                                }
                            }.frame(width: 140)
                        }
                        
                    }
                }
                
            }.padding()
            
            Button {
                
            }
                label: {
                    ZStack{
                        Text("Calculate")
                            .padding(20)
                            .bold()
                            .frame(maxWidth: .infinity)
                        .foregroundColor(.white)}
                            .background(
                            RoundedRectangle(cornerRadius: 15)
                                .fill(.black.opacity(0.89))
                                
                            )
                            .padding(.horizontal)
                }
            Spacer()
        }
    }
}

#Preview {
    DepositsView()
}
