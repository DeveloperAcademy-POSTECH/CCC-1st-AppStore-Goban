//
//  ContentView.swift
//  AppStoreClone
//
//  Created by Lee Myeonghwan on 2022/05/31.
//

import SwiftUI

struct tabbarController: View {
    let gameIcon = UIImage(named: "rocketImage")
    let arcadeIcon = UIImage(named: "arcadeImage")
    var body: some View {
        TabView{
            todayView()
                .tabItem{
                    Image(systemName: "doc.text.image")
                    Text("투데이")
                }
            Text("Game")
                .tabItem{
                    Image(uiImage: gameIcon!)
                    Text("게임")
                }
            Text("App")
                .tabItem{
                    Image(systemName: "square.stack.3d.up.fill")
                    Text("앱")
                }
            Text("Arcade")
                .tabItem{
                    Image(uiImage: arcadeIcon!)
                    Text("Arcade")
                }
            Text("Search")
                .tabItem{
                    Image(systemName: "magnifyingglass")
                    Text("검색")
                }
        }
        .onAppear(){
            UITabBar.appearance().clipsToBounds = true
            UITabBar.appearance().backgroundColor = UIColor(Color.gray.opacity(0.1))
        }
    }
}

struct tabbarController_Previews: PreviewProvider {
    static var previews: some View {
        tabbarController()
    }
}

