//
//  ManagementView2.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 08/11/2023.
//

import SwiftUI
import Charts

struct ManagementView2: View {
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
                Image(systemName: "chevron.left")
                    .frame(maxWidth: .infinity, alignment:.leading)
                
                Text("Management")
                
                    .font(.body)
                    .bold()
                    .frame(maxWidth: .infinity)
                Spacer()
                Image("Image 14")
                
                    .resizable()
                    .frame(width: 50, height: 50)
                    .frame(maxWidth: .infinity, alignment:.trailing)
                
            }
            .padding(.horizontal)
            
            VStack{
                HStack(spacing: 5){
                    Text("Earn")
                    Text("0.30%")
                        .foregroundStyle(.color4)
                    Text("APY")
                }
                .font(.title)
                
                Text("Your cash is moved to banks in your program that pay you 0.30% every month")
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.color3)
            }.padding()
            
            VStack(spacing: 30){
                HStack(spacing: 190){
                    Text("Total Income")
                    Image(systemName: "chevron.down")
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
            .padding()
            
            VStack{
                HStack(spacing: 18){
                    Text("Total Income")
                        .bold()
                    Text("This week")
                        .font(.caption2)
                        .foregroundStyle(.white)
                        .background(RoundedRectangle(cornerRadius: 5)
                            .fill(.color)
                            .frame(width: 70, height: 20)
                        )
                }.frame(maxWidth: .infinity, alignment: .leading)
                
                HStack(spacing: 20){
                    ZStack{
                        Rectangle()
                            .cornerRadius(15)
                            .frame(width: 163, height: 171)
                            .foregroundStyle(.color)
                        VStack{
                            Image(systemName: "person")
                                .resizable()
                                .foregroundStyle(.white)
                                .frame(width: 34, height: 34)
                                .background(RoundedRectangle(cornerRadius: 15)
                                    .foregroundStyle(.white.opacity(0.2))
                                    .frame(width: 60, height: 60)
                                ).padding()
                            Text("1.650.00")
                                .foregroundStyle(.white)
                            Text("People")
                                .foregroundStyle(.color5)
                        }
                    }
                    ZStack{
                        Rectangle()
                            .cornerRadius(15)
                            .frame(width: 163, height: 171)
                            .foregroundStyle(.color4)
                        VStack{
                            Image(systemName: "photo")
                                .resizable()
                                .foregroundStyle(.white)
                                .frame(width: 34, height: 34)
                                .background(RoundedRectangle(cornerRadius: 15)
                                    .foregroundStyle(.white.opacity(0.2))
                                    .frame(width: 60, height: 60)
                                ).padding()
                            Text("1.650.00")
                                .foregroundStyle(.white)
                            Text("Spots")
                                .foregroundStyle(.color5)
                        }
                    }
                }.frame(height: 195)
            }.padding()
            Spacer()
        }
    }
}

#Preview {
    ManagementView2()
}
