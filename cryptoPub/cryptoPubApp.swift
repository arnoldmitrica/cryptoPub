//
//  cryptoPubApp.swift
//  cryptoPub
//
//  Created by Arnold Mitricã on 04.06.2021.
//

import SwiftUI

@main
struct cryptoPubApp: App {
    @StateObject private var vm = HomeViewModel()
    @State private var showLaunchView: Bool = true
    init(){
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UITableView.appearance().backgroundColor = UIColor.clear
        UINavigationBar.appearance().tintColor = UIColor(Color.theme.accent)
    }
    var body: some Scene {
        WindowGroup {
            ZStack{
                NavigationView {
                    HomeView().navigationBarHidden(true)
                }
                .navigationViewStyle(StackNavigationViewStyle())
                .environmentObject(vm)
                ZStack{
                    if showLaunchView{
                        LaunchView(showLaunchView: $showLaunchView)
                            .transition(.move(edge: .leading))
                    }
                }
                .zIndex(2.0)
                
            }
            
        }
    }
}
