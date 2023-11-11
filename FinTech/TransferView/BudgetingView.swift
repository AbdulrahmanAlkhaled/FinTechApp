//
//  BudgetingView.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 05/11/2023.
//

import SwiftUI

struct BudgetingView: View {
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
                
            } // HStack 1
        //.padding()
            VStack{
                Image("Image 18")
                    .resizable()
                    .frame(width: 354, height: 250)

                Text("Transactions")
                    .font(.title3)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                ScrollView(.vertical, showsIndicators: false){
                    HStack{
                        Image(systemName: "arrow.down")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundStyle(.color)
                            .background(RoundedRectangle(cornerRadius: 15)
                                .frame(width: 60, height: 60)
                                .foregroundStyle(.color.opacity(0.2))
                            )
                        // .frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack{
                            Text("Health")
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("Pharmacy")
                                .foregroundStyle(.gray)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                        }.padding(.horizontal)
                        VStack{
                            Text("+$343")
                                .bold()
                                .foregroundStyle(.green)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                            Text("Jun 10")
                                .foregroundStyle(.gray)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                            
                        }
                    }.padding()
                    
                    HStack{
                        Image(systemName: "arrow.up")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundStyle(.red)
                            .background(RoundedRectangle(cornerRadius: 15)
                                .frame(width: 60, height: 60)
                                .foregroundStyle(.red.opacity(0.2))
                            )
                        // .frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack{
                            Text("Transfer")
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("From the card")
                                .foregroundStyle(.gray)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                        }.padding(.horizontal)
                        VStack{
                            Text("-$233")
                                .bold()
                                .foregroundStyle(.red)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                            Text("Jun 20")
                                .foregroundStyle(.gray)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                            
                        }
                    }.padding()
                    
                    HStack{
                        Image(systemName: "arrow.up")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundStyle(.red)
                            .background(RoundedRectangle(cornerRadius: 15)
                                .frame(width: 60, height: 60)
                                .foregroundStyle(.red.opacity(0.2))
                            )
                        // .frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack{
                            Text("Sport")
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("Shopping")
                                .foregroundStyle(.gray)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                        }.padding(.horizontal)
                        VStack{
                            Text("-$745")
                                .bold()
                                .foregroundStyle(.red)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                            Text("Jun 25")
                                .foregroundStyle(.gray)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                            
                        }
                    }.padding()
                    
                    HStack{
                        Image(systemName: "arrow.down")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundStyle(.green)
                            .background(RoundedRectangle(cornerRadius: 15)
                                .frame(width: 60, height: 60)
                                .foregroundStyle(.green.opacity(0.2))
                            )
                        // .frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack{
                            Text("Transfer")
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("Salary")
                                .foregroundStyle(.gray)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                        }.padding(.horizontal)
                        VStack{
                            Text("+$1000")
                                .bold()
                                .foregroundStyle(.green)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                            Text("Jun 30")
                                .foregroundStyle(.gray)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                            
                        }
                    }.padding()
                    
                    HStack{
                        Image(systemName: "arrow.up")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundStyle(.red)
                            .background(RoundedRectangle(cornerRadius: 15)
                                .frame(width: 60, height: 60)
                                .foregroundStyle(.red.opacity(0.2))
                            )
                        // .frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack{
                            Text("Supermarket")
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("Shopping")
                                .foregroundStyle(.gray)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                        }.padding(.horizontal)
                        VStack{
                            Text("-$345")
                                .bold()
                                .foregroundStyle(.red)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                            Text("July 10")
                                .foregroundStyle(.gray)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                            
                        }
                    }.padding()
                }
            }
            .padding(.horizontal)
           
        }
    }
}

#Preview {
    BudgetingView()
}
