//
//  PlaybackView.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 07/11/2023.
//

import SwiftUI

struct PlaybackView: View {
    var body: some View {
        VStack{
            HStack{
                Image("Image 13")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .frame(maxWidth: .infinity, alignment:.leading)
                Text("Income")
                    .font(.title3)
                    .bold()
                    .frame(maxWidth: .infinity)
                Spacer()
                Image("Image 14")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .frame(maxWidth: .infinity, alignment:.trailing)
            } // HStack 1
            .padding()
            VStack{
                Text("My cards")
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                ScrollView(.horizontal, showsIndicators: false){
                    
                    HStack(spacing: -15){
                        Text("+ Add Card")
                            .rotationEffect(.degrees(-90))
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .strokeBorder(style: StrokeStyle(lineWidth: 1, dash: [10]))
                                    .frame(width: 50, height: 167)
                                    .foregroundStyle(.gray)
                            )
                            .padding(.bottom)
                        ZStack{
                            Image("Image 37")
                                .resizable()
                                .frame(width: 200, height: 321)
                            VStack(spacing:65){
                                VStack(spacing: 60){
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
                                }.frame(height: 100)
                            }.frame(width: 140)
                        }
                        ZStack{
                            Image("Image 38")
                                .resizable()
                                .frame(width: 200, height: 321)
                            VStack(spacing:65){
                                VStack(spacing: 60){
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
                                }.frame(height: 100)
                            }.frame(width: 140)
                            
                        }
                    }
                }
            }
            
            VStack{
                HStack{
                    Text("Recent Transactions")
                        .bold()
                    Spacer()
                    Image(systemName: "chevron.right")
                }.padding(.horizontal)
                
                ScrollView(.vertical, showsIndicators: false){
                    VStack(spacing: 30){
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
                            
                            
                        }
                        
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
                        }
                        
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
                            
                        }
                        
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
                                Text("Supermarket")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text("Shopping")
                                    .font(.footnote)
                                    .foregroundStyle(.color3)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }.padding(.horizontal)
                            VStack{
                                Text("- $23")
                                    .foregroundStyle(.color4)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                Text("Jan 30")
                                    .font(.footnote)
                                    .foregroundStyle(.color3)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                            }
                            
                        }
                    }.padding()
                        
                }.frame(width: 360)
            }
            Spacer()
        }
    }
}

#Preview {
    PlaybackView()
}
