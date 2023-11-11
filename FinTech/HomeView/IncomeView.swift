//
//  IncomeView.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 05/11/2023.
//

import SwiftUI
import Charts

struct IncomeView: View {
    let dateView : [MonthView] = [
        .init(date: Date.from(month: 1), viewCount: 4500, colorV: .color2),
        .init(date: Date.from(month: 2), viewCount: 4000, colorV: Color.color),
        .init(date: Date.from(month: 3), viewCount: 2500, colorV: Color.gray.opacity(0.5)),
        .init(date: Date.from(month: 4), viewCount: 3500, colorV: .blue),
        .init(date: Date.from(month: 5), viewCount: 6000, colorV: Color.color4),
        .init(date: Date.from(month: 6), viewCount: 4000, colorV: Color.color)
    ]
         
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
                
            ZStack{
                
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 414, height: 430)
                    .foregroundStyle(.color1)
                  
                VStack{
                    HStack{
                        Button {
                        } label: {
                            Text("Income")
                            //    .font(.callout)
                                .foregroundStyle(.white)
                                .bold()
                                .padding()
                        }
                        .background(RoundedRectangle(cornerRadius: 10.0)
                            .foregroundStyle(.color)
                            .frame(width: 98, height: 40))
                        // .padding(.horizontal)
                        Button {
                        } label: {
                            Text("Expense")
                            //    .font(.callout)
                                .foregroundStyle(.gray)
                                .bold()
                                .padding()
                        }
                        .background(RoundedRectangle(cornerRadius: 10.0)
                            .foregroundStyle(.gray.opacity(0.1))
                            .frame(width: 98, height: 40))
                        .padding(.horizontal)
                        
                        Button {
                        } label: {
                            Text("Saving")
                            //    .font(.callout)
                                .foregroundStyle(.gray)
                                .bold()
                                .padding()
                        }
                        .background(RoundedRectangle(cornerRadius: 10.0)
                            .foregroundStyle(.gray.opacity(0.1))
                            .frame(width: 98, height: 40))
                    }
                    Divider()
                        .frame(width: 310)
                        .padding()
                       
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
                    .frame(width: 334, height: 280)
                   // .foregroundStyle(.red.gradient)
                }
                
            }//.padding()
            }
        HStack{
            Image("Image 16")
                .resizable()
                .frame(width: 80, height: 80)

                
            VStack{
                Text("Jastan Beber")
                    .bold()
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                HStack{
                    Image("Image 17")
                        .resizable()
                        .frame(width: 40, height: 40)
                    VStack{
                        Text("Your Card Limit")
                            .font(.footnote)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("5.876 USD of 5.907")
                            .bold()
                            .font(.footnote)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
            }.padding(.horizontal, 10)
            Image(systemName: "chevron.right")
                .foregroundStyle(.white)
                .padding(.horizontal,10)
        }.padding(35)
            .background(RoundedRectangle(cornerRadius: 15.0)
                .foregroundStyle(.color)
                .frame(width: 354, height: 112)
            )
                Spacer()
        } // VStack 1
    }


#Preview {
    IncomeView()
}

struct MonthView: Identifiable{
    let id = UUID()
    let date: Date
    let viewCount: Int
    var colorV: Color
}

extension Date{
    static func from(month: Int)-> Date{
        let components = DateComponents( month: month)
        return Calendar.current.date(from: components)!
    }
}
