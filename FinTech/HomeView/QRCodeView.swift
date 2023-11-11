//
//  QRCodeView.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 08/11/2023.
//

import SwiftUI

struct QRCodeView: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "chevron.left")
                    .frame(maxWidth: .infinity, alignment:.leading)
                
                Text("QR Code Scan")
                
                    .font(.body)
                    .bold()
                    .frame(maxWidth: .infinity)
                Spacer()
                Image("Image 14")
                
                    .resizable()
                    .frame(width: 50, height: 50)
                    .frame(maxWidth: .infinity, alignment:.trailing)
                
            } // HStack 2
            .padding(.horizontal)
            
            Image("Image 53")
                .resizable()
                .frame(width: 354, height: 525)
            Spacer()
                HStack(spacing: 70){
                    VStack(spacing: 10){
                        Image(systemName: "newspaper")
                            .resizable()
                            .foregroundStyle(.white)
                            .frame(width: 40, height: 40)
                        Text("Bill")
                            .foregroundStyle(.white)
                    }.background(RoundedRectangle(cornerRadius: 15)
                        .frame(width: 100, height: 115)
                        .foregroundColor(.white.opacity(0.3))
                    )
                    VStack(spacing: 10){
                        Image(systemName: "doc.plaintext")
                            .resizable()
                            .foregroundStyle(.white)
                            .frame(width: 40, height: 40)
                        Text("Expense")
                            .foregroundStyle(.white)
                    }.background(RoundedRectangle(cornerRadius: 15)
                        .frame(width: 100, height: 115)
                        .foregroundColor(.white.opacity(0.3))
                    )
                    VStack(spacing: 10){
                        Image(systemName: "qrcode.viewfinder")
                            .resizable()
                            .foregroundStyle(.white)
                            .frame(width: 40, height: 40)
                        Text("QR")
                            .foregroundStyle(.white)
                    }.background(RoundedRectangle(cornerRadius: 15)
                        .frame(width: 100, height: 115)
                        .foregroundColor(.color2)
                    )
                }
                .background(RoundedRectangle(cornerRadius: 45)
                    .frame(width: 414, height: 190)
                    .foregroundStyle(.color))
                .frame(height: 120)
            }
        }
    }


#Preview {
    QRCodeView()
}
