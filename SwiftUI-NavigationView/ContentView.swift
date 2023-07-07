//
//  ContentView.swift
//  SwiftUI-NavigationView
//
//  Created by Arno Princeston pan on 2023-07-07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            HomeScreen()
        }
    }
}

struct SecondScreen: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
            VStack{
                Image(systemName: "bell")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 208,
                           height: 208,
                           alignment: .center)
                    .padding()
                
                Text("Notification")
                    .font(.system(size: 32, weight: .light, design: .default))
                
                NavigationLink(
                    destination: HomeScreen(),
                    label: {
                        ContinueButton(btnText: "Home", btnBackgroundColor: .blue, btnFontColor: .white)
                    }
                )
            }.navigationTitle("Notifications")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContinueButton: View {
    
    var btnText: String
    var btnBackgroundColor: Color
    var btnFontColor: Color
    
    var body: some View {
        Text(btnText)
            .frame(width: 204, height: 48, alignment: .center)
            .background(btnBackgroundColor)
            .foregroundColor(btnFontColor)
            .cornerRadius(8)
    }
}

struct HomeScreen: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
            VStack{
                Image(systemName: "house")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 208,
                           height: 208,
                           alignment: .center)
                    .padding()
                
                Text("Home Screen")
                    .font(.system(size: 32, weight: .light, design: .default))
                
                NavigationLink(
                    destination: SecondScreen(),
                    label: {
                        ContinueButton(btnText: "Notification", btnBackgroundColor: .blue, btnFontColor: .white)
                    }
                )
            }
            .navigationTitle("Home")
        }
    }
}
