//
//  ManagementView.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 08/11/2023.
//

import SwiftUI
import Charts

struct ManagementView: View {
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
                Text("Total Income")
                    .font(.body)
                    .bold()
                    .foregroundStyle(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                HStack(spacing: 20){
                    Text("$153.30")
                        .font(.title2)
                        .bold()
                    HStack{
                        Text("-12%")
                            .font(.caption)
                            .foregroundStyle(.white)
                        Image(systemName: "chevron.down")
                            .resizable()
                            .foregroundStyle(.white)
                            .frame(width: 9, height: 6)
                    }.background(RoundedRectangle(cornerRadius: 25.0)
                        .foregroundStyle(.color4)
                        .frame(width: 68, height: 24)
                    )
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
            .padding()
            
            VStack{
                HStack(spacing: 40){
                    Text("Main")
                        .foregroundStyle(.white)
                        .background(RoundedRectangle(cornerRadius: 12)
                            .foregroundStyle(.color)
                            .frame(width: 80, height: 40))
                    Text("Weekly")
                        .foregroundStyle(.color3)
                    Text("Monthly")
                        .foregroundStyle(.color3)
                    Text("Yearly")
                        .foregroundStyle(.color3)
                }
                VStack{
                    Text("Spending")
                        .foregroundStyle(.color3)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Trending")
                        .font(.title3)
                        .bold().foregroundStyle(.color4)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Chart{
                        ForEach(dateView){MonthView in
                        LineMark(
                                x: .value("Month", MonthView.date, unit: .month),
                                y: .value("view", MonthView.viewCount)
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .foregroundStyle(.color4)
                        }
                        
                    }//.padding(.vertical)
                        .frame(width: 300, height: 185)
                }.background(RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.color5, lineWidth: 1)
                    .frame(width: 350, height: 265)
                    .shadow(radius: 10)
                ).padding()
                    
                }.padding()
            
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
                HStack(spacing: 15){
                    ZStack{
                        Rectangle()
                            .cornerRadius(15)
                            .frame(width: 163, height: 201)
                            .foregroundStyle(.color)
                        VStack{
                            Image("Image 55")
                                .resizable()
                                .frame(width: 104, height: 90)
                            Text("Weekly")
                                .font(.footnote)
                                .foregroundStyle(.white)
                            Text("Activity")
                                .bold()
                                .foregroundStyle(.white)
                                .padding(8)
                        }
                    }
                    ZStack{
                        Rectangle()
                            .cornerRadius(15)
                            .frame(width: 163, height: 201)
                            .foregroundStyle(.color4)
                        VStack{
                            Image("Image 57")
                                .resizable()
                                .frame(width: 83.32, height: 84)
                            Text("Payment")
                                .font(.footnote)
                                .foregroundStyle(.white)
                            Text("Due In")
                                .bold()
                                .foregroundStyle(.color2)
                                .padding(8)
                        }
                    }
                }
            }.padding(.horizontal)
            }
        
            Spacer()
        }
    }


#Preview {
    ManagementView()
}
