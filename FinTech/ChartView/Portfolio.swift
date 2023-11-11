//
//  Char3.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 09/11/2023.
//

import SwiftUI

struct Portfolio: View {
    var body: some View {
        VStack{
            HStack{
                Image("Image 67")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .frame(maxWidth: .infinity, alignment:.leading)
                Text("Budgeting")
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
                
                
                VStack(spacing: 20){
                    HStack{
                        Text("Your earned")
                            .bold()
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Image("Image 70")
                            .resizable()
                            .frame(width: 68, height: 25)
                            .foregroundStyle(.white)
                            //.padding(.horizontal,6)
                    }
                        
                        VStack{
                            Text("390.20 USD")
                                .bold()
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                        }
                }.padding(.horizontal, 10)
             
                
            }.padding(35)
                .background(RoundedRectangle(cornerRadius: 15.0)
                    .foregroundStyle(.color)
                    .frame(width: 354, height: 112)
                )
            VStack{
                Text("Transactions")
                   .frame(maxWidth: .infinity, alignment: .leading)
                
                ZStack{
                  RoundedRectangle(cornerRadius: 15)
                        .frame(width: 354, height: 192)
                        .foregroundStyle(.white)
                        .shadow(radius: 4)
                    
                    VStack(spacing: 20){
                        HStack{
                            Image("Image 82")
                                .resizable()
                                .frame(width: 46, height: 46)
                            Text("Home Investment")
                                .bold()
                                .padding(5)
                            HStack(spacing:3){
                                Text("Profit")
                                Text("+5.3%")
                                    .font(.title3)
                                    .bold()
                            } .padding()
                            .foregroundStyle(.white)
                            .background(RoundedRectangle(cornerRadius: 6)
                                .frame(width: 120, height: 40)
                                .foregroundStyle(.color)
                            )
                            .frame(maxWidth: .infinity, alignment: .trailing)
                        }.frame(width: 330)
                            .padding(.bottom)
                        VStack(spacing: 1){
                            Text("My portfolio")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .frame(width: 320)
                            HStack(spacing: 100){
                                Text("$12,544")
                                    .bold()
                                    .font(.title)
                                Image("Image 83")
                                    .resizable()
                                    .frame(width: 109, height: 39)
                            }
                        }                            .padding(.bottom)

                    }
                }
            }.padding()
            HStack(spacing: 60){
                Text("fund")
                    .foregroundStyle(.white)
                    .bold()
                    .background(RoundedRectangle(cornerRadius: 8)
                        .frame(width: 98, height: 40)
                        .foregroundStyle(.color)
                    )
                Text("Bond")
                    .foregroundStyle(.gray)
                    .background(RoundedRectangle(cornerRadius: 8)
                        .frame(width: 98, height: 40)
                        .foregroundStyle(.gray.opacity(0.1))
                    ).padding()
                Text("Stock")
                    .foregroundStyle(.gray)

                    .background(RoundedRectangle(cornerRadius: 8)
                        .frame(width: 98, height: 40)
                        .foregroundStyle(.gray.opacity(0.1))
                    )
            }
            HStack{
                    ZStack{
                        Image(systemName: "location")
                            .resizable()
                            .foregroundStyle(.color2)
                            .frame(width: 24, height: 24)
                        
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 60 ,height: 60)
                            .foregroundStyle(.color2.opacity(0.3))
                    }
                    VStack{
                        Text("DDR 4990 Market")
                            .font(.body)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("Mutual funds")
                            .foregroundStyle(.gray)
                            .frame(maxWidth: .infinity, alignment: .leading)
                }
                VStack{
                    Text("+ 9.10%")
                        .foregroundStyle(.color)
                    Text("1y return")
                        //.frame(maxWidth: .infinity, alignment: .leading)
                }  //.frame(maxWidth: .infinity)
                    
            }
                .background(RoundedRectangle(cornerRadius: 15)
                    .frame(width: 354, height: 83)
                    .foregroundStyle(.gray.opacity(0.08))
                )
                .frame(width: 330)
                .padding()
            HStack{
                    ZStack{
                        Image(systemName: "arrow.down")
                            .resizable()
                            .foregroundStyle(.color4)
                            .frame(width: 24, height: 24)
                        
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 60 ,height: 60)
                            .foregroundStyle(.color4.opacity(0.3))
                    }
                    VStack{
                        Text("Mutual fund plus")
                            .font(.body)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("Mutual funds")
                            .foregroundStyle(.gray)
                            .frame(maxWidth: .infinity, alignment: .leading)
                }
                VStack{
                    Text("- 17.5%")
                        .foregroundStyle(.color4)
                    Text("1y return")
                        //.frame(maxWidth: .infinity, alignment: .leading)
                }  //.frame(maxWidth: .infinity)
                    
            }
                .background(RoundedRectangle(cornerRadius: 15)
                    .frame(width: 354, height: 83)
                    .foregroundStyle(.gray.opacity(0.08))
                ).padding(.vertical, 10)
                .frame(width: 330)
            Spacer()
        }
    }
}

#Preview {
    Portfolio()
}
