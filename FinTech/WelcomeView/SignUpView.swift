//
//  SignUpView.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 05/11/2023.
//

import SwiftUI

struct SignUpView: View {

    @State var email: String = ""
    var body: some View {
        VStack{
            VStack{
            Text("Create Account")
                .font(.title)
                .bold()
                .padding()
            Text("Create an account so you can manage your personal finances")
                .multilineTextAlignment(.center)
                .foregroundStyle(.gray)
            // .padding(.horizontal)
            //Spacer()
        }.padding()
            HStack(spacing: 0){
                Image("Image 6")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding(.bottom)
                VStack{
                    Text("Email address")
                        .font(.footnote)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    TextField("Enter your email", text: .constant(""))
                        .foregroundColor(Color.gray)
                        .frame(width: 200)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Divider()


                }
                
                .padding()
            }
            HStack(spacing: 0){
                Image("Image 7")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding(.bottom)
                VStack{
                    Text("Password")
                        .font(.footnote)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    TextField("Enter your email", text: .constant(""))
                        .foregroundColor(Color.gray)
                        .frame(width: 200)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Divider()

                    
                }
                .padding(.horizontal)
              
            }
          
            HStack(spacing: 0){
                Image("Image 9")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding(.bottom)
                VStack{
                    Text("Phone number")
                        .font(.footnote)
                        .frame(maxWidth: .infinity, alignment: .leading)
                     //   .padding(.top)
                    TextField("Enter your phone number", text: $email)
                        .foregroundColor(Color.gray)
                        .frame(width: 200)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Divider()

                    
                }
                
                    .padding()
            }
            NavigationLink(
                destination: {
                    
                },
                label: {
                    ZStack{
                        Text("Create an account")
                            .padding(20)
                            .bold()
                            .frame(maxWidth: .infinity)
                        .foregroundColor(.white)}
                            .background(
                            RoundedRectangle(cornerRadius: 30)
                           // .stroke( lineWidth: 2)
                            .fill(.color)
                                .containerShape(RoundedRectangle(cornerRadius: 16))
                                
                            )
                            .padding(.horizontal)
                    
                }
            ).padding(.vertical)
            
            VStack{
                Text("Or continue with social account")
                    .font(.callout)
                    .foregroundStyle(.gray)
                    .padding()
                HStack{
                    VStack(spacing: 25){
                    
                        Image("Image 10")
                            .resizable()
                           // .padding()
                            .frame(width: 16, height: 16)
                            .background(Circle()
                                .stroke(lineWidth: 1.0)
                                .fill(.gray.opacity(0.5))
                                .frame(width: 40, height: 40)
                            )
                        Text("Apple")
                            .font(.callout)
                           // .padding(.vertical,7)
                    }.padding(.horizontal)
                    VStack(spacing: 15){
                    
                        Image("Image 11")
                            .resizable()
                           // .padding()
                            .frame(width: 16, height: 16)
                            .background(Circle()
                                .stroke(lineWidth: 1.0)
                                .fill(.gray.opacity(0.5))
                                .frame(width: 40, height: 40)
                            )
                        Text("Google")
                            .font(.callout)
                            .padding(.vertical,7)
                    }.padding(.horizontal)
                    VStack(spacing: 15){
                    
                        Image("Image 12")
                            .resizable()
                            //.padding()
                            .frame(width: 16, height: 16)
                            .background(Circle()
                                .stroke(lineWidth: 1.0)
                                .fill(.gray.opacity(0.5))
                                .frame(width: 40, height: 40)
                            )
                        Text("Twitter")
                            .font(.callout)
                            .padding(.vertical,7)
                    }.padding(.horizontal)
                }.padding()
            }
               // Spacer()
            }.padding()
        }
        }
        
    

#Preview {
    SignUpView()
}
