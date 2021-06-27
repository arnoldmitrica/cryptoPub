//
//  SettingsView.swift
//  cryptoPub
//
//  Created by Arnold Mitricã on 23.06.2021.
//

import SwiftUI

struct SettingsView: View {
    let defaultURL = URL(string: "https://www.google.com")!
    let youtubeURL = URL(string: "https://www.youtube.com/c/swiftfulthinking")!
    let coffeeURL = URL(string: "https://www.buymeacoffee.com/nicksarno")!
    let personalURL = URL(string: "https://www.github.com/arnoldmitrica")!
    let coingeckoURL = URL(string: "https://www.coingecko.com")!
    var body: some View {
        NavigationView{
            
            ZStack {
                Color.theme.background.ignoresSafeArea()
                List{
                    swiftfulThinking
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    coinGeckoSection.listRowBackground(Color.theme.background.opacity(0.5))
                    developerSection.listRowBackground(Color.theme.background.opacity(0.5))
                    applicationSection.listRowBackground(Color.theme.background.opacity(0.5))
                                }
                
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
        }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

extension SettingsView{
    private var swiftfulThinking: some View{
        Section(header: Text("Swiftful Thinking")) {
            VStack(alignment: .leading){
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was made by following a tutorial course on youtube, It uses MVVM Architecture, Combine and CoreData.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Subscribe on Youtube 📹", destination: youtubeURL)
            Link("Support his coffe addiction ☕️", destination: coffeeURL)
            
        }

    }
    
    private var coinGeckoSection: some View{
        Section(header: Text("Coin Gecko")) {
            VStack(alignment: .leading){
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The crypto curreny data that is used in this app comes from a free API from CoinGecko! Prices my be slightly delayed.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Visit CoinGecko 🦎", destination: coingeckoURL)
            
        }
    }
        
        private var developerSection: some View{
            Section(header: Text("Developer")) {
                VStack(alignment: .leading){
                    Image("avatar")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    Text("This app was developed by Arnold Mitrica by taking part of SiwftfulThinking Course. It uses SwiftUI and Swift 100%. The project benefits from multi-threading, publishers/subscribers and data persistence.")
                        .font(.callout)
                        .fontWeight(.medium)
                        .foregroundColor(Color.theme.accent)
                }
                .padding(.vertical)
                Link("Visit Github 💪🏻", destination: personalURL)
                
            }
            
            

    }
    
    private var applicationSection: some View{
        Section(header: Text("Application")) {
            Link("Terms of Service", destination: defaultURL)
            Link("Privacy Policy", destination: defaultURL)
            Link("Company Website", destination: defaultURL)
            Link("Learn more", destination: defaultURL)
            
        }
    }
    }
