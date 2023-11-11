//
//  FirstView.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 05/11/2023.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        VStack{
                Text("Welcome to")
                    .font(.title2)
                    .bold()
                    .padding()
            
            VStack{
                Image("Image 1")
                    .resizable()
                    .frame(width: 233, height: 161)
                
                Text("AEB")
                    .font(.largeTitle)
                    .bold()
                
                Text("App thet will help you to properly manage yout finances")
                    .multilineTextAlignment(.center)
        
                    .foregroundStyle(.gray)
            }
            .padding()
            
            Image("Image")
                .resizable()
                .frame(width: 303, height: 246)
                .padding()
            Button {
                   } label: {
                     Text("Get's started")
                       //    .font(.callout)
                           .foregroundStyle(.white)
                           .bold()
                           .padding()
                   }
                   .background(RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 332, height: 61))
                   .padding()
           // Spacer()
        } // VStack 1
    }
}

#Preview {
    FirstView()
}
