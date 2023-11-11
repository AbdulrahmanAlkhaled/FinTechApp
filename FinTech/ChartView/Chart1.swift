//
//  Chart1.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 09/11/2023.
//

import SwiftUI
import Charts

struct Chart1: View {
    let dateView : [MonthView] = [
        .init(date: Date.from(month: 1), viewCount: 4500, colorV: .color2),
        .init(date: Date.from(month: 2), viewCount: 7000, colorV: Color.color),
        .init(date: Date.from(month: 3), viewCount: 2500, colorV: Color.gray.opacity(0.5)),
        .init(date: Date.from(month: 4), viewCount: 3500, colorV: .blue),
        .init(date: Date.from(month: 5), viewCount:6000, colorV: Color.color4),
        .init(date: Date.from(month: 6), viewCount: 4000, colorV: Color.color)
    ]
    
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
                    .padding(.horizontal)
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: -20){
                        ZStack{
                            Image("Image 37")
                                .resizable()
                                .frame(width: 185, height: 235)
                            VStack(spacing:65){
                                VStack(spacing: 20){
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
                                }.frame(height: 50)
                            }.frame(width: 130)
                        }
                        ZStack{
                            Image("Image 38")
                                .resizable()
                                .frame(width: 185, height: 235)
                            VStack(spacing:65){
                                VStack(spacing: 20){
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
                                }.frame(height: 50)
                            }.frame(width: 130)
                        }
                        ZStack{
                            Image("Image 37")
                                .resizable()
                                .frame(width: 185, height: 235)
                            VStack(spacing:65){
                                VStack(spacing: 20){
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
                                }.frame(height: 50)
                            }.frame(width: 130)
                        }
                    }
                }
            }//.padding()
            VStack(spacing: 30){
                HStack(spacing: 140){
                    HStack{
                        Image(systemName: "apple.logo")
                        Text("Apple")
                    }
                    HStack{
                        Text("$5,540")
                        Image(systemName: "chevron.down")
                    }.background(RoundedRectangle(cornerRadius: 25.0)
                        .fill(.color5.opacity(0.4))
                        .frame(width: 103, height: 32)
                    )
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
                .frame(width: 300, height: 185)
            }
                .background(RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.color5, lineWidth: 1)
                    .frame(width: 350, height: 265)
                    .shadow(radius: 10))
            Spacer()
        }
    }
}

#Preview {
    Chart1()
}
