//
//  SignInView.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 05/11/2023.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        VStack{
            VStack{
                Text("Welcome Back 👋🏼")
                    .font(.title)
                    .bold()
                    .padding()
                Text("I am so happy to see. You can contiue to login for manage your finance")
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.gray)
                // .padding(.horizontal)
                Spacer()
            }.padding()
            HStack(spacing: 0){
                Image("Image 6")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding(.bottom)
                VStack{
                    Text("Email address")
                        .font(.caption)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    TextField("", text: .constant(""))
                        .foregroundColor(Color.gray)
                        .frame(width: 200)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Divider()

                }
                
                .padding()
            }
            VStack{
                HStack(spacing: 0){
                    Image("Image 7")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(.bottom)
                    VStack{
                        Text("Password")
                            .font(.caption)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        SecureField("", text: .constant(""))
                            .foregroundColor(Color.gray)
                            .frame(width: 190)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        
                        Divider()
                        
                    }
                    
                    .padding()
                }
                Text("forget password?")
                    .font(.callout)
                    .foregroundStyle(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(5)
                Spacer()
            }
          

            Button {
                
            }
                label: {
                    ZStack{
                        Text("Sign in")
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
                    
                }.padding(.vertical)
            
            Text("Enable [Face Lock](https://apple.com) or [Touch Lock](https://apple.com) for Quick Sign in")
                .font(.body)
                .multilineTextAlignment(.center)
                .foregroundStyle(.gray)
                .padding(.horizontal)
            Spacer()
        }.padding()
        Spacer()
        }
}

#Preview {
    SignInView()
}
