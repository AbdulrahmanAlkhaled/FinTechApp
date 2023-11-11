//
//  ChartView.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 06/11/2023.
//

import SwiftUI
import Charts

struct ChartView: View {
    let dateView : [MonthView] = [
        .init(date: Date.from(month: 1), viewCount: 4500, colorV: .color2),
        .init(date: Date.from(month: 2), viewCount: 4000, colorV: Color.color),
        .init(date: Date.from(month: 3), viewCount: 2500, colorV: Color.gray.opacity(0.5)),
        .init(date: Date.from(month: 4), viewCount: 3500, colorV: .blue),
        .init(date: Date.from(month: 5), viewCount:6000, colorV: Color.color4),
        .init(date: Date.from(month: 6), viewCount: 4000, colorV: Color.color)]
    
    var body: some View {
        VStack{
            HStack{
                Image("Image 13")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .frame(maxWidth: .infinity, alignment:.leading)
                Text("My Budget")
                    .font(.title3)
                    .bold()
                    .frame(maxWidth: .infinity)
                Spacer()
                Image("Image 14")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .frame(maxWidth: .infinity, alignment:.trailing)
                
            } // HStack 2
          Spacer()
            
            
            VStack(spacing: -310){
                ZStack{
                    Rectangle()
                        .frame(width: 314, height: 194)
                        .cornerRadius(15)
                        .foregroundStyle(.color1)
                       
                    
                    VStack{
                        HStack{
                            Image("Image 22")
                                .resizable()
                                .frame(width: 22, height: 22)
                                .offset(CGSize(width: 10.0, height: 10.0))
                            Spacer()
                            Text("This month")
                                .offset(CGSize(width: -20.0, height: 10.0))
                        }.padding(.horizontal,36)
                          
                        HStack{
                            Text("Balance")
                                .bold()
                              //  .frame(maxWidth: .infinity, alignment: .leading)
                                .offset(CGSize(width: 30.0, height: 10.0))
                            Spacer()
                            Image("Image 24")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .offset(CGSize(width: -18.0, height: 10.0))
                            Text("12.884 USD")
                                .font(.subheadline)
                                .offset(CGSize(width: -18.0, height: 10.0))
                        }.padding(.horizontal)
                        HStack{
                            
                            Text("22.866")
                                .bold()
                                .font(.title2)
                                .foregroundStyle(.color)
                                .offset(CGSize(width: 30.0, height: 10.0))
                            Spacer()
                            Image("Image 25")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .offset(CGSize(width: -22.0, height: 10.0))

                            Text("7.449 USD")
                                .font(.subheadline)
                                .offset(CGSize(width: -22.0, height: 10.0))

                        }.padding(.horizontal)
                        
                    }.padding(.top)
                    
                }
                    ZStack{
                        Image("Image 19")
                            .resizable()
                            .frame(width: 301, height: 211)
                        VStack{
                        HStack{
                            Image("Image 20")
                                .resizable()
                                .frame(width: 44, height: 31)
                            // .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text("A.I. ASHIK")
                                .font(.footnote)
                                .foregroundStyle(.white)
                            Spacer()
                            Image("Image 21")
                                .resizable()
                                .frame(width: 40, height: 13)
                            // .frame(maxWidth: .infinity, alignment: .trailing)
                        }//.padding(.vertical)
                           
                        VStack{
                            Text("**** 2001")
                                .font(.subheadline)
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            HStack{
                                Text("4200.00 USD")
                                    .bold()
                                    .foregroundStyle(.white)
                                Spacer()
                                Image("Image 23")
                                    .resizable()
                                    .frame(width: 38, height: 25)
                            }
                            
                        }.padding(.vertical,32)
                        
                    }.padding(.horizontal,67)
                        
                    }
            

            }
           Spacer()
            HStack(spacing:30){
                Text("March")
                    .font(.body)
                    .foregroundStyle(.gray)
                Text("April")
                    .font(.body)
                    .foregroundStyle(.gray)
                Text("June")
                    .font(.body)
                    .bold()
                    .foregroundStyle(.white)
                    .background(RoundedRectangle(cornerRadius: 10)
                        .fill(.color)
                        .frame(width: 80, height: 40)
                    ).padding()
                Text("May")
                    .foregroundStyle(.gray)
                    .font(.body)
                
            }.padding(.horizontal)
            ZStack{
                Image("Image 27")
                    .resizable()
                    .frame(width: 354, height: 294)
                VStack{
                    HStack(spacing: 100){
                        VStack{
                            Text("Transactions")
                                .foregroundStyle(.black.opacity(0.7))
                            Text("554.00 USD")
                                .bold()
                                .foregroundStyle(.color)
                        }
                        HStack{
                            Text("Weekly")
                                .foregroundStyle(.black.opacity(0.7))
                            Image(systemName: "chevron.down")
                        }
                    }
                    Chart{
                        ForEach(dateView){MonthView in
                            BarMark(
                                x: .value("Month", MonthView.date, unit: .month),
                                y: .value("view", MonthView.viewCount)
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .foregroundStyle(MonthView.colorV)
                        }
                        
                    }
                        .frame(width: 308, height: 162)
                }
            }
        }.padding(.horizontal)
    }
}

#Preview {
    ChartView()
}
    
