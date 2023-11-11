//
//  TotalBalanceView.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 09/11/2023.
//

import SwiftUI

struct TotalBalanceView: View {
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
                Image("Image 59")
                    .resizable()
                    .frame(width: 344, height: 233)
                Text("Total balance")
                Text("$7,455.00")
                    .font(.title)
                    .bold()
            }.padding()
            
            VStack{
                HStack(spacing: 40){
                    Button {
                    } label: {
                        Text("Flat")
                        //    .font(.callout)
                            .foregroundStyle(.white)
                            .padding()
                    }
                    .background(RoundedRectangle(cornerRadius: 10.0)
                        .foregroundStyle(.color)
                        .frame(width: 98, height: 40))
                    // .padding(.horizontal)
                    Button {
                    } label: {
                        Text("Crypto")
                        //    .font(.callout)
                            .foregroundStyle(.gray)
                            .bold()
                            .padding()
                    }
                    .background(RoundedRectangle(cornerRadius: 10.0)
                        .foregroundStyle(.gray.opacity(0.1))
                        .frame(width: 98, height: 40))
                }
                HStack{
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
                    VStack(spacing:5){
                          Text("- $233")
                              .foregroundStyle(.color4)
                              .background(RoundedRectangle(cornerRadius: 25.0)
                                .frame(width: 65, height: 30)
                                .foregroundStyle(.color4.opacity(0.3))
                              )
                              .frame(maxWidth: .infinity, alignment: .trailing)
                          Text("Jan 10")
                              .font(.footnote)
                              .foregroundStyle(.color3)
                              .frame(maxWidth: .infinity, alignment: .trailing)
                      }
                      
                }
                HStack{
                      ZStack{
                          Image("Image 60")
                              .resizable()
                              .frame(width: 24, height: 24)
                          RoundedRectangle(cornerRadius: 15)
                              .frame(width: 60 ,height: 60)
                              .foregroundStyle(.cyan.opacity(0.3))
                      }
                      VStack{
                          Text("Paypal")
                              .frame(maxWidth: .infinity, alignment: .leading)
                          
                          Text("Deposit")
                              .font(.footnote)
                              .foregroundStyle(.color3)
                              .frame(maxWidth: .infinity, alignment: .leading)
                          
                      }//.padding(.horizontal)
                    VStack(spacing:5){
                          Text("- $450")
                              .foregroundStyle(.color)
                              .background(RoundedRectangle(cornerRadius: 25.0)
                                .frame(width: 65, height: 30)
                                .foregroundStyle(.color.opacity(0.3))
                              )
                              .frame(maxWidth: .infinity, alignment: .trailing)
                          Text("Jan 5")
                              .font(.footnote)
                              .foregroundStyle(.color3)
                              .frame(maxWidth: .infinity, alignment: .trailing)
                      }
                      
                }
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
                          Text("ATM Bank")
                              .frame(maxWidth: .infinity, alignment: .leading)
                          
                          Text("Withdraw")
                              .font(.footnote)
                              .foregroundStyle(.color3)
                              .frame(maxWidth: .infinity, alignment: .leading)
                          
                      }//.padding(.horizontal)
                    VStack(spacing:5){
                          Text("- $100")
                              .foregroundStyle(.color4)
                              .background(RoundedRectangle(cornerRadius: 25.0)
                                .frame(width: 65, height: 30)
                                .foregroundStyle(.color4.opacity(0.3))
                              )
                              .frame(maxWidth: .infinity, alignment: .trailing)
                          Text("Jan 1")
                              .font(.footnote)
                              .foregroundStyle(.color3)
                              .frame(maxWidth: .infinity, alignment: .trailing)
                      }
                      
                }
            }.padding()
            Spacer()
        }
    }
}

#Preview {
    TotalBalanceView()
}
