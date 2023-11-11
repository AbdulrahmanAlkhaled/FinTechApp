//
//  OnBoardingView.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 05/11/2023.
//

import SwiftUI

struct OnBoardingStep{
    let image: String
    let title: String
    let description: String
}

private let onBoardingSteps = [
    OnBoardingStep(image:"Image 2", title: "Set your financial goals", description: "Your goals will help us to formulate the right recommendations for success"),
    OnBoardingStep(image:"Image 3", title: "Set your financial goals", description: "Your goals will help us to formulate the right recommendations for success"),
    OnBoardingStep(image:"Image 4", title: "Set your financial goals", description: "Your goals will help us to formulate the right recommendations for success")]

struct OnBoardingView: View {
    @State private var currentStep = 0
    
    init(){
        UIScrollView.appearance().bounces = false
    }
    var body: some View {
        VStack{
          
            TabView (selection: $currentStep){
                ForEach(0..<onBoardingSteps.count){ index in
                    
                    VStack {
                        Image(onBoardingSteps[index].image)
                            .resizable()
                            .frame(width: 268, height: 263)
                        Text(onBoardingSteps[index].title)
                            .font(.largeTitle)
                            .padding()
                            .multilineTextAlignment(.center)
                            .bold()
                        
                        Text(onBoardingSteps[index].description)
                            .foregroundStyle(.gray)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 32)
                            .padding(.top, 16)
                    }
                }
            }//.frame(height: 360)
    
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            VStack{
                HStack{
                    ForEach(0..<onBoardingSteps.count){index in
                        if index == currentStep{
                            Circle()
                                .frame(width: 12)
                                .cornerRadius(10)
                                .foregroundColor(.color)
                                .padding(.vertical)
                        }else{
                            Circle()
                                .frame(width: 10, height: 10)
                                .foregroundColor(.gray)
                            
                        }}
                }
              // Spacer()
            }
            Button(action: {
                if self.currentStep < onBoardingSteps.count - 1{
                    self.currentStep += 1
                }else{
                    // Let's Begin logic
                }
                
            }) {
                Button(action: {
                    self.currentStep = onBoardingSteps.count - 1
                }){
                    Text(currentStep < onBoardingSteps.count - 1 ? "Skip" : "Create account")
                        //.padding(16)
                        .foregroundColor(.black)
                       // .padding()
                        .frame(maxWidth: .infinity)
                }.padding()
                    .frame(maxWidth: .infinity)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(25)
                    .frame(width: 152)
                    .padding(.horizontal, 16)
                    .foregroundColor(.white)
                
                HStack{
                    
                    Text(currentStep < onBoardingSteps.count - 1 ? "Next" : "Sign in")
                        .bold()
                        .padding(.horizontal)
                    Image("Image 5")
                        .resizable()
                        .frame(width: 24, height: 24)
                } .padding()
                    .frame(maxWidth: .infinity)
                    .background(.color)
                    .cornerRadius(25)
                    .frame(width: 152)
                    .padding(.horizontal, 16)
                    .foregroundColor(.white)
            }
           Spacer()
        }
    }
}

#Preview {
    OnBoardingView()
}
