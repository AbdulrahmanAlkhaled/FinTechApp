//
//  SetBudget.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 11/11/2023.
//

import SwiftUI

struct SetBudget: View {
    var body: some View {
        VStack{
            VStack(spacing: 30){
                Text("Set Budget")
                    .font(.title2)
                    .bold()
                Text("Total Balance")
                    .foregroundStyle(.gray)
                
                Text("$15,733 ")
                    .font(.largeTitle)
                    .bold()
            }.padding()
            
            VStack{
                Text("January 8, Tuesday")
                    .foregroundStyle(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack(spacing:-25){
                    Image("Image 89")
                        .resizable()
                        .frame(width: 210, height: 170)
                        .frame(width: 220)
                    Image("Image 90")
                        .resizable()
                        .frame(width: 210, height: 170)

                }
                VStack{
                    Text("Favourites")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .bold()
                    HStack(spacing: -15){
                        Image("Image 49")
                            .resizable()
                            .frame(width: 60, height: 60)
                        Image("Image 50")
                            .resizable()
                            .frame(width: 60, height: 60)
                        Image("Image 51")
                            .resizable()
                            .frame(width: 60, height: 60)
                        Image("Image 52")
                            .resizable()
                            .frame(width: 60, height: 60)
                        Image(systemName: "plus.circle")
                            .resizable()
                            .foregroundStyle(.gray.opacity(0.8))
                            .frame(width: 60, height: 60)
                            .background(Circle()
                                .foregroundStyle(.white)
                            )
                    }.frame(maxWidth: .infinity, alignment:. leading)
                    
                    VStack(spacing: 30){
                        HStack{
                            Image("Image 92")
                                .resizable()
                                .frame(width: 80, height: 80)
                            
                            
                            VStack(spacing: 10){
                                HStack{
                                    Text("Selected")
                                        .foregroundStyle(.gray)
                                        .bold()
                                        .foregroundStyle(.white)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    Image(systemName: "heart")
                                        .foregroundStyle(.gray)
                                }
                                
                                VStack{
                                    Text("Jane Cooper")
                                        .foregroundStyle(.black)
                                        .bold()
                                        .foregroundStyle(.white)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                }
                            }.padding(.horizontal, 10)
                            
                            
                        }
                        HStack(spacing: 24){
                            Button {
                                
                            }
                        label: {
                            ZStack{
                                Text("$ 345")
                                    .foregroundStyle(.gray)
                                    .padding(20)
                                    .bold()
                                    .frame(maxWidth: .infinity)
                                .foregroundColor(.white)}
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(.gray.opacity(0.2))
                                    .frame(width: 142)
                            )
                            .padding(.horizontal)
                        }
                            Button {
                                
                            }
                        label: {
                            ZStack{
                                Text("Send")
                                    .padding(20)
                                    .bold()
                                    .frame(maxWidth: .infinity)
                                .foregroundColor(.white)}
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(.color)
                                    .frame(width: 142)
                            )
                            .padding(.horizontal)
                        }
                        }
                    }.padding(35)
                        .background(RoundedRectangle(cornerRadius: 15.0)
                            .foregroundStyle(.white)
                            .shadow(radius: 6)
                            .frame(width: 345, height: 212)
                        )
                }
                
            }.padding()
        }
        Spacer()
    }
}

#Preview {
    SetBudget()
}
