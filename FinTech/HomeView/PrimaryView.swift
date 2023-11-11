//
//  PrimaryView.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 07/11/2023.
//

import SwiftUI
import Charts
struct PrimaryView: View {
    let dateView : [MonthView] = [
    .init(date: Date.from(month: 1), viewCount: 0, colorV: .color2),
    .init(date: Date.from(month: 2), viewCount: 1000, colorV: Color.color),
    .init(date: Date.from(month: 3), viewCount: 600, colorV: Color.gray.opacity(0.5)),
    .init(date: Date.from(month: 4), viewCount: 6500, colorV: .blue),
    .init(date: Date.from(month: 5), viewCount: 5000, colorV: Color.color4),
    .init(date: Date.from(month: 6), viewCount: 5500, colorV: Color.color)
]
    @State private var currentStep = 0

    var body: some View {
        VStack{
            HStack{
                Image("Image 13")
                    .resizable()
                    .frame(width: 24, height: 24)
                  //.frame(maxWidth: .infinity, alignment:.leading)
                Spacer()
                HStack{
                    Text("Welcome")
                        .font(.title3)
                    // .bold()
                        //.frame(maxWidth: .infinity)
                    Text("Ashik!")
                        .font(.title3)
                        .bold()
                } // HStack 2
                Spacer()
                
                Image("Image 14")
                    .resizable()
                    .frame(width: 50, height: 50)
                    //.frame(maxWidth: .infinity, alignment:.trailing)
                
            } // HStack 1
            .padding()
            ZStack{
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
            HStack{
                Image("Image 28")
                    .resizable()
                    .frame(width: 50, height: 50)
                Spacer()
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
                }
                    Spacer()
                    Image("Image 29")
                        .resizable()
                        .frame(width: 50, height: 50)
                
                
            }.padding(.horizontal)
            
            VStack{
                Text("Total balance")
                    .font(.title3)
                    .foregroundStyle(.color3)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("$ 13.455, 23")
                    .font(.title)
                    .bold()
                    //.padding(1)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }.padding()
            VStack{
                Text("Transactions")
                    .frame(maxWidth: .infinity, alignment: .leading)
                Image("Image 30")
                    .resizable()
                    .frame(width: 349, height: 62)
            }.padding(.horizontal)
            
            VStack{
                HStack{
                    Text("Transactions history")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Image(systemName: "chevron.right")
                }
                ScrollView(.vertical, showsIndicators: false){
                    VStack(spacing: -6){
                        HStack{
                            Image(systemName: "location")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundStyle(.color)
                                .background(RoundedRectangle(cornerRadius: 15)
                                    .frame(width: 60, height: 60)
                                    .foregroundStyle(.color.opacity(0.15))
                                            
                                )
                            VStack{
                                Text("Adidas")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Text("May 10:40PM")
                                    .font(.footnote)
                                    .foregroundStyle(.color3)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                            }.padding(.horizontal)
                            
                            Text("- $233")
                                .foregroundStyle(.color4)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                            
                            
                        }.padding()
                        HStack{
                            Image(systemName: "location")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundStyle(.color)
                                .background(RoundedRectangle(cornerRadius: 15)
                                    .frame(width: 60, height: 60)
                                    .foregroundStyle(.color.opacity(0.2))
                                )
                            VStack{
                                Text("McDonalds")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Text("Jan 11:00PM")
                                    .font(.footnote)
                                    .foregroundStyle(.color3)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                            }.padding(.horizontal)
                            
                            Text("- $233")
                                .foregroundStyle(.color4)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                            
                            
                        }.padding()
                    }
                }
            }.padding(.horizontal)
            .frame(width: 370)
            Spacer()
        }
    }
}

#Preview {
    PrimaryView()
}
