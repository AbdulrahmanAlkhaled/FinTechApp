//
//  ServicesView.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 07/11/2023.
//

import SwiftUI

struct ServicesView: View {
    @State private var showGreeting = true
    @State private var showGreeting2 = true
    @State private var showGreeting3 = true

    var body: some View {
        VStack{
            HStack{
                Image("Image 13")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .frame(maxWidth: .infinity, alignment:.leading)
                Text("Services")
                    .font(.title3)
                    .bold()
                    .frame(maxWidth: .infinity)
                Spacer()
                Image("Image 14")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .frame(maxWidth: .infinity, alignment:.trailing)
            }.padding(.horizontal)
            
            VStack{
                Text("My cards")
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("2 pysical card, 1 virtual card")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(height: 1)
                    .foregroundStyle(.color3)
            }.padding(.horizontal)
                HStack(spacing: 65){
                    Button {
                        
                    }
                label: {
                    
                    HStack{
                        
                        Text("Physical card")
                            .foregroundColor(.white)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.color4)
                                    .frame(width: 147, height: 40)
                            )
                    }
                    
                }
                    Button {
                        
                    }
                label: {
                    HStack{
                        
                        Text("Virtual card")
                            .foregroundColor(.gray)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.gray.opacity(0.2))
                                    .frame(width: 147, height: 40)
                            )
                    }
                    
                    
                }.padding(.vertical)
                }.frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .frame(width:350)
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: -20){
                        ZStack{
                            Image("Image 19")
                                .resizable()
                                .frame(width: 301, height: 211)
                            VStack{
                                HStack(spacing:27){
                                    HStack{
                                        Image("Image 20")
                                            .resizable()
                                            .frame(width: 44, height: 31)
                                        // .frame(maxWidth: .infinity, alignment: .leading)
                                        
                                        Text("A.I. ASHIK")
                                            .font(.footnote)
                                            .foregroundStyle(.white)
                                    }
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
                            
                            }.frame(width: 220)
                            
                        }
                        Image("Image 32")
                            .resizable()
                            .frame(width: 301, height: 211)
                    }
                }
                HStack(spacing:5){
                    Text("Card")
                        .bold()
                    Text("settings")
                        .foregroundStyle(.color3)
                }.frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                VStack{
                    
                    HStack{
                        ZStack{
                            Image("Image 33")
                                .resizable()
                                .frame(width: 50, height: 50)
                            Image("Image 34")
                                .resizable()
                                .frame(width: 24, height: 24)
                        }
                        Toggle("Contactless payment", isOn: $showGreeting)
                    }.frame(width: 325)
                        .background(RoundedRectangle(cornerRadius: 15)
                            .frame(width: 345, height: 58)
                            .foregroundStyle(.color1)
                        )
                    
                    HStack{
                        ZStack{
                            Image("Image 35")
                                .resizable()
                                .frame(width: 50, height: 50)
                            Image(systemName: "dollarsign")
                                .resizable()
                                .foregroundStyle(.color2)
                                .frame(width: 24, height: 24)
                        }
                        Toggle("Contactless payment", isOn: $showGreeting2)
                    }.frame(width: 325)
                        .background(RoundedRectangle(cornerRadius: 15)
                            .frame(width: 345, height: 58)
                            .foregroundStyle(.color1)
                        )
                        .padding(.vertical)
                    
                    HStack{
                        ZStack{
                            Image("Image 36")
                                .resizable()
                                .frame(width: 50, height: 50)
                            Image(systemName: "creditcard")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundStyle(.color6)
                        }
                        Toggle("Contactless payment", isOn: $showGreeting3)
                    }.frame(width: 325)
                        .background(RoundedRectangle(cornerRadius: 15)
                            .frame(width: 345, height: 58)
                            .foregroundStyle(.color1)
                        )
                }
            
            
            Spacer()
        }//.padding()
        
    }
}

#Preview {
    ServicesView()
}
