//
//  SetBudgetCalendarView.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 09/11/2023.
//

import SwiftUI

struct SetBudgetCalendarView: View {
    @State private var selectedDate = Date()
    var body: some View {
        ZStack{
            GeometryReader { i in
                RoundedRectangle(cornerRadius: 10).fill(.color)
                    .ignoresSafeArea()
                    .frame(width:395 , height: i.size.height/2.5)
            }
            VStack{
                Text("Set Budget")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .foregroundStyle(.white)
                    .padding(.all,16)
                
                DatePicker("Select a Date", selection: $selectedDate, displayedComponents: .date)
                    .datePickerStyle(GraphicalDatePickerStyle()).background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).fill(.white).frame(width: 354, height: 331))
                    .tint(.orange.opacity(0.5))
                    .shadow(radius: 10,y:15)
                    //.padding(.all,16)
                    .frame(width: 320)
                HStack{
                    Text("January 8, Tuesday")
                        .padding([.horizontal,.top],16)
                    Spacer()
                    Image(systemName: "ellipsis")
                        .background(Circle().fill(.gray.opacity(0.2)).frame(width: 44,height: 44))
                        .padding([.horizontal,.top],16)
                }
                .frame(height: 50)
                .padding()
                HStack{
                    Image("Image 64")
                        .resizable()
                        .frame(width: 60, height: 60)
                    VStack{
                        Text("HBO")
                            .bold()
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment:.leading)
                            .padding(.bottom,3)
                        Text("Monthly")
                            .foregroundStyle(.black.opacity(0.5))
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment:.leading)
                    }
                    //Spacer()
                    Text("$43.00")
                        .foregroundStyle(.color)
                        .background(Capsule().fill(.gray.opacity(0.1)).frame(width: 79, height: 40))
                }
                .padding([.horizontal],24)
                .padding(.vertical)
                HStack{
                    Image("Image 65")
                        .resizable()
                        .frame(width: 60, height: 60)                  
                    VStack{
                        Text("Netflex")
                            .bold()
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment:.leading)
                            .padding(.bottom,3)
                        Text("Monthly")
                            .foregroundStyle(.black.opacity(0.5))
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment:.leading)
                    }
                   // Spacer()
                    Text("$14.00")
                        .foregroundStyle(.color)
                        .background(Capsule().fill(.gray.opacity(0.1)).frame(width: 79, height: 40))
                }
                .padding([.horizontal],24)
                //.padding(.vertical)
                HStack{
                    Image("Image 66")
                        .resizable()
                        .frame(width: 60, height: 60)
                    VStack{
                        Text("The Pizza Company")
                            .bold()
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment:.leading)
                            .padding(.bottom,3)
                        Text("Pizza")
                            .foregroundStyle(.black.opacity(0.5))
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment:.leading)
                    }
                    Spacer()
                    Text("$23.00")
                        .foregroundStyle(.color)
                        .background(Capsule().fill(.gray.opacity(0.1)).frame(width: 79, height: 40))
                }
                .padding([.horizontal],24)
                .padding(.vertical)
                
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
           
            
        }
        
        
        
        
        
      
        
    }
}



#Preview {
    SetBudgetCalendarView()
}

