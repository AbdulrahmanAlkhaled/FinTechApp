//
//  OverView.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 08/11/2023.
//

import SwiftUI
import Charts

struct OverView: View {
    let dateView : [MonthView] = [
        .init(date: Date.from(month: 1), viewCount: 4500, colorV: .color2),
        .init(date: Date.from(month: 2), viewCount: 7000, colorV: Color.color),
        .init(date: Date.from(month: 3), viewCount: 2500, colorV: Color.gray.opacity(0.5)),
        .init(date: Date.from(month: 4), viewCount: 3500, colorV: .blue),
        .init(date: Date.from(month: 5), viewCount:6000, colorV: Color.color4),
        .init(date: Date.from(month: 6), viewCount: 4000, colorV: Color.color)
    ]
    
    @State var searchText: String = ""
    var body: some View {
        VStack{
            HStack{
                Image("Image 13")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .frame(maxWidth: .infinity, alignment:.leading)
                Text("Overview")
                    .font(.title3)
                    .bold()
                Image("Image 14")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .frame(maxWidth: .infinity, alignment:.trailing)
            }.padding()
            
            VStack{
                HStack{
                    Text("Hey")
                        .font(.title2)
                        //.frame(maxWidth: .infinity, alignment: .leading)
                    Text("Ashik!")
                        .font(.title2)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                Text("What will you do today?")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundStyle(.gray.opacity(0.9))
                    .padding(.vertical,3)
                
                HStack{
                    TextField("Search here ", text: $searchText)
                        .padding(.leading,25)
                        .frame(width: 330, height: 35)

                }
                .padding(10)
                .background(.white)
                .cornerRadius(15)
                .shadow(color:Color.gray.opacity(0.8),radius: 1.0)
                .padding(.horizontal)
                .overlay(
                   Image(systemName: "magnifyingglass")
//                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 10)
                            .frame(width: 48, height: 49)
                            .foregroundStyle(.color4)
                                   )
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing,32)
                )
                .padding()
                    VStack{
                        HStack{
                            Text("Dashboard")
                            Spacer()
                            Image(systemName: "chevron.down")
                        }.frame(width: 300)
                        Chart{
                            ForEach(dateView){MonthView in
                            LineMark(
                                    x: .value("Month", MonthView.date, unit: .month),
                                    y: .value("view", MonthView.viewCount)
                                )
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .foregroundStyle(.green)
                            }
                            
                        }.padding(.vertical)
                            .frame(width: 300, height: 185)
                    }.background(RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.color5, lineWidth: 1)
                        .frame(width: 344, height: 256)
                    )//.frame(height: 260)
                    .padding()
                    
                HStack(spacing: 20){
                   ZStack{
                        Rectangle()
                            .frame(width: 163 ,height: 195)
                            .cornerRadius(15)
                            .foregroundStyle(.color)
                       VStack(spacing: 72){
                           HStack{
                               Text("Clients")
                                   .foregroundStyle(.white)
                                   .frame(maxWidth: .infinity, alignment:. leading)
                               Image(systemName: "chevron.down")
                                   .foregroundStyle(.white)
                               
                           }
                           VStack{
                               HStack{
                                   Text("998")
                                       .bold()
                                       .foregroundStyle(.white)
                                   Text("Clients")
                                       .frame(maxWidth: .infinity, alignment:. leading)
                                       .foregroundStyle(.white)
                               }
                               HStack(spacing: -12){
                                   Image("Image 49")
                                       .resizable()
                                       .frame(width: 30, height: 30)
                                   Image("Image 50")
                                       .resizable()
                                       .frame(width: 30, height: 30)
                                   Image("Image 51")
                                       .resizable()
                                       .frame(width: 30, height: 30)
                                   Image("Image 52")
                                       .resizable()
                                       .frame(width: 30, height: 30)
                               }.frame(maxWidth: .infinity, alignment:. leading)
                           }
                       }.padding()
                   }
                    ZStack{
                        Rectangle()
                            .frame(width: 163 ,height: 195)
                            .cornerRadius(15)
                            .foregroundStyle(.color4)
                        VStack(spacing: -20){
                                HStack{
                                    Text("Your cards")
                                        .foregroundStyle(.white)
                                        .frame(maxWidth: .infinity, alignment:. leading)
                                    Image(systemName: "chevron.down")
                                        .foregroundStyle(.white)
                                    
                                }
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack(spacing:-5){
                                    
                                    Image("Image 47")
                                        .resizable()
                                        .frame(width: 105, height: 160)
                                    Image("Image 48")
                                        .resizable()
                                        .frame(width: 105, height: 160)
                                }.offset(CGSize(width: 10.0, height: 24.0))
                            }.frame(width: 165)
                        }.frame(width: 140)
                    }
                }.padding(10)

            }.padding()
            Spacer()
        }
    }
}

#Preview {
    OverView()
}
