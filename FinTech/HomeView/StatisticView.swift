//
//  StatisticView.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 08/11/2023.
//

import SwiftUI
import Charts
struct StatisticView: View {
    let dateView : [MonthView] = [
        .init(date: Date.from(month: 1), viewCount: 4500, colorV: .color2),
        .init(date: Date.from(month: 2), viewCount: 4000, colorV: Color.color),
        .init(date: Date.from(month: 3), viewCount: 2500, colorV: Color.gray.opacity(0.5)),
        .init(date: Date.from(month: 4), viewCount: 3500, colorV: .blue),
        .init(date: Date.from(month: 5), viewCount:6000, colorV: Color.color4),
        .init(date: Date.from(month: 6), viewCount: 4000, colorV: Color.color)
    ]
    
    var body: some View {
        ZStack{
            Color.color
                .ignoresSafeArea()
        VStack{
                HStack{
                    Image("Image 39")
                        .resizable()
                        .foregroundStyle(.white)

                        .frame(width: 24, height: 24)
                        .frame(maxWidth: .infinity, alignment:.leading)
                    Text("Statistic")
                        .font(.title3)
                        .foregroundStyle(.white)
                        .bold()
                        .frame(maxWidth: .infinity)
                    Spacer()
                    Image("Image 40")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .frame(maxWidth: .infinity, alignment:.trailing)
                    
                }.padding()
                .offset(y: 10)
            VStack{
                Text("My cards")
                    .font(.title)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal,32)
                VStack(spacing: 30){
                    HStack{
                        Text("$455.00")
                            .font(.title)
                            .bold()
                        Spacer()
                        Text("Weekly")
                            .font(.title3)
                            .foregroundStyle(.color3)
                        Image(systemName: "chevron.down")
                            .foregroundStyle(.color3)
                    }.padding()
                        .frame(height: 110)
                    VStack{
                        Chart{
                            ForEach(dateView){MonthView in
                                BarMark(
                                    x: .value("Month", MonthView.date, unit: .month),
                                    y: .value("view", MonthView.viewCount)
                                )
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .foregroundStyle(MonthView.colorV)
                            }
                            
                        }.padding(.vertical)
                            .frame(width: 344, height: 260)
                        HStack{
                            Text("Recent Transactions")
                                .bold()
                            Spacer()
                            Image(systemName: "chevron.right")
                        }//.padding(.horizontal)
                        ScrollView(.vertical, showsIndicators: false){
                        VStack(spacing: 10){
                            HStack{
                                ZStack{
                                    Text("Uber")
                                      //  .resizable()
                                      //  .frame(width: 24, height: 24)
                                        .foregroundStyle(.black)
                                        Image("Image 43")
                                        .resizable()
                                        .frame(width: 60 ,height: 60)
                                }
                                VStack{
                                    Text("Uber")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    Text("ride & food")
                                        .font(.footnote)
                                        .foregroundStyle(.color3)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                }//.padding(.horizontal)
                                VStack{
                                    Text("- $10")
                                        .foregroundStyle(.color4)
                                        .frame(maxWidth: .infinity, alignment: .trailing)
                                    Text("Jan 3")
                                        .font(.footnote)
                                        .foregroundStyle(.color3)
                                        .frame(maxWidth: .infinity, alignment: .trailing)
                                }
                                
                                
                            }
                            HStack{
                                ZStack{
                                    Image("Image 44")
                                        .resizable()
                                        .frame(width: 24, height: 24)
                                        .foregroundStyle(.red)
                                    Image("Image 42")
                                        .resizable()
                                        .frame(width: 60 ,height: 60)
                                }
                                VStack{
                                    Text("Mcdonald's")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    Text("Restaurent")
                                        .font(.footnote)
                                        .foregroundStyle(.color3)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                }//.padding(.horizontal)
                                VStack{
                                    Text("- $8")
                                        .foregroundStyle(.color4)
                                        .frame(maxWidth: .infinity, alignment: .trailing)
                                    Text("Jan 10")
                                        .font(.footnote)
                                        .foregroundStyle(.color3)
                                        .frame(maxWidth: .infinity, alignment: .trailing)
                                }
                                
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
                        }//.padding()
                    }
                        }//.padding()
                            
                }.padding(.horizontal)
                .frame(height: 670)
                        .background(RoundedRectangle(cornerRadius: 45)
                            .foregroundStyle(.white)
                            
                        )
                        //.offset(y:5)
                }
            }
            Spacer()
        }
            
        }
    }

#Preview {
    StatisticView()
}
