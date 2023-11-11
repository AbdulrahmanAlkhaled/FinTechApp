//
//  DepositsView3.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 09/11/2023.
//

import SwiftUI
import Charts
struct DepositsView3: View {
    let dateView : [MonthView] = [
    .init(date: Date.from(month: 1), viewCount: 0, colorV: .color2),
    .init(date: Date.from(month: 2), viewCount: 1000, colorV: Color.color),
    .init(date: Date.from(month: 3), viewCount: 600, colorV: Color.gray.opacity(0.5)),
    .init(date: Date.from(month: 4), viewCount: 6500, colorV: .blue),
    .init(date: Date.from(month: 5), viewCount: 5000, colorV: Color.color4),
    .init(date: Date.from(month: 6), viewCount: 5500, colorV: Color.color)
]
    
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
          ZStack {
                RoundedRectangle(cornerRadius: 15.0)
                    .frame(width: 354, height: 221)
                    .foregroundStyle(.color)
                VStack{
                    HStack{
                        VStack {
                            Text("Savings")
                                .font(.title3)
                                .bold()
                            .foregroundStyle(.white)
                            Text("$5200.00")
                                .font(.footnote)
                                .foregroundStyle(.white)
                        }
                        Spacer()
                        HStack(spacing: 30){
                            Button{
                                
                            }
                        label: {
                            Text("chart")
                                .font(.footnote)
                                .foregroundStyle(.white)
                            
                                .background(RoundedRectangle(cornerRadius: 50)
                                    .frame(width: 70, height: 30)
                                    .foregroundStyle(.white.opacity(0.3))
                                )

                        }
                            Button{
                                
                            }
                        label: {
                            Text("Table")
                                .font(.footnote)
                                .foregroundStyle(.white)
                               
                        }
                        }
                    }

                    .frame(width: 330)
                        
                    Chart{
                        ForEach(dateView){MonthView in
                            LineMark(
                                x: .value("Month", MonthView.date, unit: .month),
                               y: .value("view", MonthView.viewCount)
                                    )
                            .foregroundStyle(.white)
                        }
                        
                    }
                    .frame(width: 314, height: 132)
                }.padding()
            }
            HStack(spacing:12){
                Circle()
                    .frame(width: 11)
                    .foregroundStyle(.color)
                    .background(Circle()
                        .stroke(.color, lineWidth: 1)
                        .frame(width: 17, height: 17)
                    )
                Circle()
                    .frame(width: 11)
                    .foregroundStyle(.color5)
                Circle()
                    .frame(width: 11)
                    .foregroundStyle(.color5)
            }.padding()
            VStack{
                HStack {
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
                        Text("Jan 10")
                            .font(.footnote)
                            .foregroundStyle(.color3)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                }
            HStack    {
                      ZStack{
                          Image("Image 63")
                              .resizable()
                              .foregroundStyle(.color4)
                              .frame(width: 36, height: 24)
                             
                          RoundedRectangle(cornerRadius: 15)
                              .frame(width: 60 ,height: 60)
                              .foregroundStyle(.color2.opacity(0.3))
                      }
                      VStack{
                          Text("Master card")
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
                    VStack(spacing:5){
                          Text("- $233")
                              .foregroundStyle(.color4)
                              .background(RoundedRectangle(cornerRadius: 25.0)
                                .frame(width: 65, height: 30)
                                .foregroundStyle(.color4.opacity(0.3))
                              )
                              .frame(maxWidth: .infinity, alignment: .trailing)
                          Text("Dec 30")
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
    DepositsView3()
}
