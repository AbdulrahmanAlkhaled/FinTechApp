//
//  DashboardView.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 08/11/2023.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack{
            HStack{
                Image("Image 13")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .frame(maxWidth: .infinity, alignment:.leading)
                Text("Dashboard")
                    .font(.title3)
                    .bold()
                Image("Image 14")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .frame(maxWidth: .infinity, alignment:.trailing)
            }.padding()
            VStack{
                Text("Total Balance")
                    .frame(maxWidth: .infinity, alignment: .leading)
                HStack(spacing: 20){
                    Text("$5,733.00")
                        .font(.title)
                        .bold()
                    Text("+4.50%")
                        .font(.footnote)
                        .foregroundStyle(.white)
                        .background(RoundedRectangle(cornerRadius: 25.0)
                            .foregroundStyle(.color7)
                            .frame(width: 68, height: 30)
                            )
                        .frame(maxWidth: .infinity, alignment: .leading)

                }.padding(.vertical,4)
                HStack(spacing: 20){
                    ZStack{
                        Rectangle()
                            .foregroundStyle(.color5.opacity(0.3))
                            .frame(width: 161, height: 100)
                            .cornerRadius(15)

                                VStack(spacing:25){
                                    HStack(spacing:25){
                                        Text("Positions")
                                            .foregroundStyle(.black.opacity(0.7))
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                        Image(systemName: "chevron.right")
                                            .foregroundStyle(.black.opacity(0.7))
                                    }
                                    Text("$2250.00")
                                        .bold()
                                        .foregroundStyle(.black.opacity(0.7))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                }.frame(width: 120)
                        }
                    ZStack{
                        Rectangle()
                            .foregroundStyle(.color5.opacity(0.3))
                            .frame(width: 161, height: 100)
                            .cornerRadius(15)
                        
                        VStack(spacing:25){
                            HStack(spacing:25){
                                Text("Cash")
                                    .foregroundStyle(.black.opacity(0.7))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Image(systemName: "chevron.right")
                                    .foregroundStyle(.black.opacity(0.7))
                            }
                            Text("$450.00")
                                .bold()
                                .foregroundStyle(.black.opacity(0.7))
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }.frame(width: 120)
                    }
                }
                
                
            }.padding()
            
            VStack{
                HStack(spacing: 20){
                    Text("Tokens Bonus")
                        .foregroundStyle(.color3)
                    Text("Today")
                        .font(.caption2)
                        .foregroundStyle(.white)
                        .background(RoundedRectangle(cornerRadius: 5)
                            .fill(.color)
                            .frame(width: 50, height: 20)
                        )
                }.frame(maxWidth: .infinity, alignment: .leading)
                
                HStack{
                    VStack{
                        ZStack{
                            Rectangle()
                                .frame(width: 163 ,height: 285)
                                .cornerRadius(15)
                                .foregroundStyle(.color4)
                            VStack(spacing: 20){
                                VStack{
                                    Image("Image 45")
                                        .resizable()
                                        .frame(width: 113, height: 112)
                                    Text("Tokens to buy for 13%")
                                        .font(.body)
                                        .multilineTextAlignment(.center)
                                        .foregroundStyle(.gray.opacity(0.7))
                                }
                                Text("990BTN")
                                    .font(.title3)
                                    .bold()
                                    .foregroundStyle(.color2)
                            }.frame(width: 110)
                        }
                        Text("Get Tokens")
                            .foregroundStyle(.color4)
                            .background(RoundedRectangle(cornerRadius: 15)
                                .frame(width: 163, height: 50)
                                .foregroundStyle(.color4.opacity(0.2))
                            ).padding(.vertical)
                    }
                    VStack(spacing:13.5){
                        ZStack{
                            Rectangle()
                                .frame(width: 163 ,height: 138)
                                .cornerRadius(15)
                                .foregroundStyle(.color2)
                            VStack(spacing: 40){
                                Image("Image 46")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                    .frame(maxWidth: .infinity, alignment:. leading)
                                VStack{
                                    Text("Bonus received")
                                        .foregroundStyle(.white)
                                        .frame(maxWidth: .infinity, alignment:. leading)
                                    Text("$22.42")
                                        .bold()
                                        .foregroundStyle(.white)
                                        .frame(maxWidth: .infinity, alignment:. leading)
                                }
                            }.frame(width: 140)
                        }
                        ZStack{
                            Rectangle()
                                .frame(width: 163 ,height: 135)
                                .cornerRadius(15)
                                .foregroundStyle(.color)
                            VStack(spacing: 40){
                                Image("Image 46")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                    .frame(maxWidth: .infinity, alignment:. leading)
                                VStack{
                                    Text("Bonus received")
                                        .foregroundStyle(.white)
                                        .frame(maxWidth: .infinity, alignment:. leading)
                                    Text("$122.00")
                                        .bold()
                                        .foregroundStyle(.white)
                                        .frame(maxWidth: .infinity, alignment:. leading)
                                }
                            }.frame(width: 140)
                        }
                        Text("Borrow Tokens")
                            .foregroundStyle(.color)
                            .background(RoundedRectangle(cornerRadius: 15)
                                .frame(width: 163, height: 50)
                                .foregroundStyle(.color.opacity(0.2))
                            ).padding(.vertical)
                    }
                    
                }
               
            }.padding()
            Spacer()
        }
    }
}

#Preview {
    DashboardView()
}
