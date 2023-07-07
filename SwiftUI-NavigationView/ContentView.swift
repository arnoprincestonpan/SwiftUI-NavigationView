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
                            ContinueButton()
                        }
                    )
                }
            }
            .navigationTitle("Home")
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
                    destination: SecondScreen(),
                    label: {
                        ContinueButton()
                    }
                )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContinueButton: View {
    var body: some View {
        Text("Continue")
            .frame(width: 204, height: 48, alignment: .center)
            .background(Color.blue)
            .foregroundColor(Color.white)
            .cornerRadius(8)
    }
}
