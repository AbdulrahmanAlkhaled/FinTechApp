//
//  Chart2.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 09/11/2023.
//

import SwiftUI

struct Chart2: View {
    var body: some View {
        VStack{
            HStack{
                Image("Image 13")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .frame(maxWidth: .infinity, alignment:.leading)
                Text("Budgeting")
                    .bold()
                    .frame(maxWidth: .infinity)
                Spacer()
                Image("Image 80")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .frame(maxWidth: .infinity, alignment:.trailing)
            }.padding()
            VStack(spacing: 30){
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
                            Image(systemName: "qrcode.viewfinder")
                            
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
                    
                    
                }
                HStack{
                    Image("Image 73")
                        .resizable()
                        .frame(width: 84, height: 84)
                    VStack(spacing: 15){
                        Text("Total saving")
                        Text("Stage milestone")
                            .font(.footnote)
                    }.foregroundStyle(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    HStack{
                        Text("$351")
                            .foregroundStyle(.white)
                        Image(systemName: "chevron.down")
                            .foregroundStyle(.white)
                    }.background(RoundedRectangle(cornerRadius: 10)
                        .frame(width: 84, height: 40)
                        .foregroundColor(.color2)
                    )
                    .frame(maxWidth: .infinity, alignment: .trailing)
                }.frame(width: 300)
            }.padding(35)
                .background(RoundedRectangle(cornerRadius: 15.0)
                    .foregroundStyle(.color)
                    .frame(width: 354, height: 232)
                )
            HStack{
            VStack{
                    Text("Top up balance")
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("via payonner & bank")
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
                Image("Image 67")
                    .resizable()
                    .frame(width: 34, height: 34)
            }.frame(width: 300)
            .background(RoundedRectangle(cornerRadius: 15.0)
                .foregroundStyle(.gray.opacity(0.1))
                .frame(width: 354, height: 84))
            .padding()
            
            HStack(spacing:90){
                VStack{
                    Image("Image 74")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Transfer")
                        .foregroundStyle(.white)
                }.background(RoundedRectangle(cornerRadius: 15.0)
                    .foregroundStyle(.color2)
                    .frame(width: 169, height: 175))
                .padding()
                VStack{
                    Image("Image 75")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Request")
                        .foregroundStyle(.color)
                }.background(RoundedRectangle(cornerRadius: 15.0)
                    .stroke(.gray.opacity(0.2),lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 169, height: 175))
                .padding()
            }.frame(height: 200)
            
            Image("Image 76")
                .resizable()
                .frame(width: 385, height: 160)
        //Spacer()
        }
    }
}

#Preview {
    Chart2()
}
