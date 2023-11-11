//
//  ContentView.swift
//  FinTech
//
//  Created by ABDULRAHMAN AL-KHALED on 05/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView{
            //            StoreView()
            //                .tabItem {
            //                    Image(systemName: "book")
            //                    Text("book store")
            //                }
            PrimaryView()
                .tabItem {
                    Image(systemName: "house")
                    Text("home")
                }
            ServicesView()
                .tabItem {
                    Image(systemName: "align.vertical.bottom")
                    Text("Services")
                       
                }
            DashboardView()
                .tabItem {
                    Image(systemName: "wallet.pass")
                    Text("wallet")
                       
                }
            OverView()
                .tabItem {
                    Image(systemName: "person")
                    Text("profile")
                       
                }
        }
    }
}
#Preview {
    ContentView()
}
