//
//  Chart3.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 10/11/2023.
//

import SwiftUI

struct Chart3: View {
    var body: some View {
        VStack{
            HStack{
                Image("Image 13")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .frame(maxWidth: .infinity, alignment:.leading)
                Text("Budgeting")
                    .bold()
                    .frame(maxWidth: .infinity)
                Spacer()
                Image("Image 80")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .frame(maxWidth: .infinity, alignment:.trailing)
            }.padding()
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: -20){
                    ZStack{
                        Image("Image 37")
                            .resizable()
                            .frame(width: 220, height: 270)
                        VStack(spacing:75){
                            VStack(spacing: 20){
                                Text("••••• 2001")
                                    .font(.footnote)
                                    .foregroundStyle(.white)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text("4200.00 USD")
                                    .bold()
                                    .foregroundStyle(.white)
                            }
                            HStack{
                                Image("Image 23")
                                    .resizable()
                                    .frame(width: 38, height: 25)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Image("Image 21")
                                    .resizable()
                                    .frame(width: 41, height: 13)
                            }.frame(height: 70)
                        }.frame(width: 140)
                    }
                    ZStack{
                        Image("Image 38")
                            .resizable()
                            .frame(width: 220, height: 270)
                        VStack(spacing:75){
                            VStack(spacing: 20){
                                Text("••••• 2001")
                                    .font(.footnote)
                                    .foregroundStyle(.white)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text("4200.00 USD")
                                    .bold()
                                    .foregroundStyle(.white)
                            }
                            HStack{
                                Image("Image 23")
                                    .resizable()
                                    .frame(width: 38, height: 25)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Image("Image 21")
                                    .resizable()
                                    .frame(width: 41, height: 13)
                            }.frame(height: 70)
                        }.frame(width: 140)
                    }
                    
                }
            }
            VStack{
                Text("Popular Operations")
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
            
                    HStack(spacing: 50){
                        VStack{
                            Image("Image 85")
                                .resizable()
                                .frame(width: 40, height: 40)
                            Text("Bills")
                                .font(.callout)
                                .foregroundStyle(.white)
                        }.background(RoundedRectangle(cornerRadius: 15)
                            .frame(width: 80, height: 90)
                            .foregroundStyle(.color)
                            .shadow(radius: 2)
                        )
                        
                        VStack{
                            Image("Image 86")
                                .resizable()
                                .frame(width: 40, height: 40)
                            Text("Bills")
                                .font(.callout)
                                .foregroundStyle(.gray)
                        }.background(RoundedRectangle(cornerRadius: 15)
                            .stroke(.color2, lineWidth: 0.55)
                            .frame(width: 80, height: 90)
                        )
                        
                        VStack{
                            Image("Image 87")
                                .resizable()
                                .frame(width: 40, height: 40)
                            Text("Bills")
                                .font(.callout)
                                .foregroundStyle(.gray)
                        }.background(RoundedRectangle(cornerRadius: 15)
                            .stroke(.blue, lineWidth: 0.55)
                            .frame(width: 80, height: 90)
                        )
                        VStack{
                            Image("Image 88")
                                .resizable()
                                .frame(width: 40, height: 40)
                            Text("Bills")
                                .font(.callout)
                                .foregroundStyle(.gray)
                        }.background(RoundedRectangle(cornerRadius: 15)
                            .stroke(.color4, lineWidth: 0.55)
                            .frame(width: 80, height: 90)
                        )
                    }.padding()
                
            }.padding(.horizontal)
            
            VStack{
                Text("Transactions")
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                VStack(spacing: 25){
                HStack{
                    Image(systemName: "arrow.up")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundStyle(.color)
                        .background(RoundedRectangle(cornerRadius: 15)
                            .frame(width: 60, height: 60)
                            .foregroundStyle(.color.opacity(0.15))
                        )
                    VStack{
                        Text("Transfer")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("Salary")
                            .font(.footnote)
                            .foregroundStyle(.color3)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                    }.padding(.horizontal)
                    VStack{
                    Text("+ $1500")
                        .foregroundStyle(.green)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    Text("Jan 3")
                        .font(.footnote)
                        .foregroundStyle(.color3)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                    
                    
                }.padding(.horizontal)
                
                HStack{
                    Image(systemName: "arrow.down")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundStyle(.red)
                        .background(RoundedRectangle(cornerRadius: 15)
                            .frame(width: 60, height: 60)
                            .foregroundStyle(.red.opacity(0.15))
                        )
                    VStack{
                        Text("Adidas")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("Shopping")
                            .font(.footnote)
                            .foregroundStyle(.color3)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                    }.padding(.horizontal)
                    VStack{
                    Text("- $233")
                        .foregroundStyle(.color4)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    Text("Jan 10")
                        .font(.footnote)
                        .foregroundStyle(.color3)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                }.padding(.horizontal)
                
                    HStack{
                        Image(systemName: "arrow.down")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundStyle(.red)
                            .background(RoundedRectangle(cornerRadius: 15)
                                .frame(width: 60, height: 60)
                                .foregroundStyle(.red.opacity(0.15))
                            )
                        VStack{
                            Text("McDonalds")
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("Restaurent")
                                .font(.footnote)
                                .foregroundStyle(.color3)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }.padding(.horizontal)
                        VStack{
                            Text("- $23")
                                .foregroundStyle(.color4)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                            Text("Jan 20")
                                .font(.footnote)
                                .foregroundStyle(.color3)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                    }.padding(.horizontal)
                }
            }.padding()
            Spacer()
        }
    }
}

#Preview {
    Chart3()
}
