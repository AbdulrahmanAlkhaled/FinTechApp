//
//  IncomehistoryView.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 08/11/2023.
//

import SwiftUI

struct IncomehistoryView: View {
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
                
            } // HStack 2
            .padding()
            
            VStack{
                Text("Total Income")
                    .font(.title3)
                    .bold()
                    .foregroundStyle(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("$5,733.00 USD")
                    .font(.title)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding()
            
            VStack(spacing: 30){
                HStack{
                    Text("Transactions")
                    Text("New")
                        .font(.caption2)
                        .foregroundStyle(.white)
                        .background(RoundedRectangle(cornerRadius: 5)
                            .fill(.color)
                            .frame(width: 50, height: 20)
                        )
                        .frame(width: 60)
Spacer()
                    Image(systemName: "chevron.right")
                }
              HStack {
                      ZStack{
                          Image(systemName: "apple.logo")
                              .resizable()
                              .frame(width: 24, height: 24)
                          Image("Image 36")
                              .resizable()
                              .frame(width: 60 ,height: 60)
                      }
                      VStack{
                          Text("Apple")
                              .frame(maxWidth: .infinity, alignment: .leading)
                          
                          Text("Shopping")
                              .font(.footnote)
                              .foregroundStyle(.color3)
                              .frame(maxWidth: .infinity, alignment: .leading)
                          
                      }//.padding(.horizontal)
                      VStack{
                          Text("- $233")
                              .foregroundStyle(.color4)
                              .frame(maxWidth: .infinity, alignment: .trailing)
                          Text("Jan 15")
                              .font(.footnote)
                              .foregroundStyle(.color3)
                              .frame(maxWidth: .infinity, alignment: .trailing)
                      }
                      
              }
              .frame(width: 330)
              .background(RoundedRectangle(cornerRadius: 15)
                .foregroundStyle(.gray.opacity(0.05))
                .frame(width: 349, height: 83)
              )
                
                HStack {
                        ZStack{
                            Image(systemName: "arrow.up")
                                .resizable()
                                .foregroundStyle(.green)
                                .frame(width: 24, height: 24)
                            
                            Rectangle()
                                  .cornerRadius(15)
                                  .foregroundStyle(.color.opacity(0.3))
                                  .frame(width: 60 ,height: 60)
                        }
                        VStack{
                            Text("Deposit")
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text("Alrajhi Bank")
                                .font(.footnote)
                                .foregroundStyle(.color3)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                        }//.padding(.horizontal)
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
                .frame(width: 330)
                .background(RoundedRectangle(cornerRadius: 15)
                  .foregroundStyle(.gray.opacity(0.05))
                  .frame(width: 349, height: 83)
                )
                HStack {
                        ZStack{
                            Image(systemName: "newspaper")
                                .resizable()
                                .foregroundStyle(.red)
                                .frame(width: 24, height: 24)
                            Rectangle()
                                  .cornerRadius(15)
                                  .foregroundStyle(.color4.opacity(0.3))
                                  .frame(width: 60 ,height: 60)
                        }
                        VStack{
                            Text("Bills")
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text("STC")
                                .font(.footnote)
                                .foregroundStyle(.color3)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                        }//.padding(.horizontal)
                        VStack{
                            Text("- $200")
                                .foregroundStyle(.color4)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                            Text("Jan 1")
                                .font(.footnote)
                                .foregroundStyle(.color3)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                        
                }
                .frame(width: 330)
                .background(RoundedRectangle(cornerRadius: 15)
                  .foregroundStyle(.gray.opacity(0.05))
                  .frame(width: 349, height: 83)
                )
                HStack {
                        ZStack{
                            Image(systemName: "gift")
                                .resizable()
                                .foregroundStyle(.color)
                                .frame(width: 24, height: 24)
                          Rectangle()
                                .cornerRadius(15)
                                .foregroundStyle(.color.opacity(0.3))
                                .frame(width: 60 ,height: 60)
                        }
                        VStack{
                            Text("Gift")
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text("From friend")
                                .font(.footnote)
                                .foregroundStyle(.color3)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                        }//.padding(.horizontal)
                        VStack{
                            Text("+ $1000")
                                .foregroundStyle(.color)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                            Text("Dec 20")
                                .font(.footnote)
                                .foregroundStyle(.color3)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                        
                }
                .frame(width: 330)
                .background(RoundedRectangle(cornerRadius: 15)
                  .foregroundStyle(.gray.opacity(0.05))
                  .frame(width: 349, height: 83)
                )
                
                VStack(spacing: 18){
                    Text("09 April, 2021")
                        .frame(maxWidth: .infinity, alignment:.leading)
                    HStack {
                        ZStack{
                            Image(systemName: "arrow.left.arrow.right")
                                .resizable()
                                .foregroundStyle(.color2)
                                .frame(width: 24, height: 24)
                            Rectangle()
                                .cornerRadius(15)
                                .foregroundStyle(.color2.opacity(0.3))
                                .frame(width: 60 ,height: 60)
                        }
                        VStack{
                            Text("EURO to USD")
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text("Alrajhi Bank")
                                .font(.footnote)
                                .foregroundStyle(.color3)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                        }//.padding(.horizontal)
                        VStack{
                            Text("+ $1000")
                                .foregroundStyle(.color2)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                            Text("Apr 9")
                                .font(.footnote)
                                .foregroundStyle(.color3)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                    }.frame(width: 330)
                        .background(RoundedRectangle(cornerRadius: 15)
                          .foregroundStyle(.gray.opacity(0.05))
                          .frame(width: 349, height: 83)
                        )
                        
                }
            }.padding()
Spacer()
        }
    }
}

#Preview {
    IncomehistoryView()
}
