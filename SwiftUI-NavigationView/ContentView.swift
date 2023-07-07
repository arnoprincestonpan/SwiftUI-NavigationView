//
//  ContentView.swift
//  SwiftUI-NavigationView
//
//  Created by Arno Princeston pan on 2023-07-07.
//

import SwiftUI

struct ContentView: View {
    
    let homeScreen = Screen(scnLinearGradientColorStart: .blue, scnLinearGradientColorEnd: .red, scnLinearGradientStartPoint: .topLeading, scnLinearGradientEndPoint: .bottomTrailing, scnImageName: "Home", scnImageWidth: 208, scnImageHeight: 208, scnImageAlignment: .center, scnTextName: "Home", scnTextSize: 32, scnBtnText: "Notifications", scnBtnBackgroundColor: .blue, scnBtnFontColor: .white, scnNavLinkDest: SecondScreen())
    var body: some View {
        NavigationView {
            homeScreen.navigationBarTitle("Home")
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

struct Screen: View {
    
    var scnLinearGradientColorStart: Color
    var scnLinearGradientColorEnd: Color
    var scnLinearGradientStartPoint: UnitPoint
    var scnLinearGradientEndPoint: UnitPoint
    
    var scnImageName: String
    var scnImageWidth: CGFloat
    var scnImageHeight: CGFloat
    var scnImageAlignment: Alignment
    
    var scnTextName: String
    var scnTextSize: CGFloat
    
    var scnBtnText: String
    var scnBtnBackgroundColor: Color
    var scnBtnFontColor: Color
    
    var scnNavLinkDest: any View
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [scnLinearGradientColorStart, scnLinearGradientColorEnd], startPoint: scnLinearGradientStartPoint, endPoint: scnLinearGradientEndPoint)
                .ignoresSafeArea(.all)
            VStack{
                Image(systemName: scnImageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: scnImageWidth,
                           height: scnImageHeight,
                           alignment: scnImageAlignment)
                    .padding()
                
                Text(scnTextName)
                    .font(.system(size: scnTextSize, weight: .light, design: .default))
                
                NavigationLink(
                    destination: AnyView(scnNavLinkDest),
                    label: {
                        ContinueButton(btnText: scnBtnText, btnBackgroundColor: scnBtnBackgroundColor, btnFontColor: scnBtnFontColor)
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
