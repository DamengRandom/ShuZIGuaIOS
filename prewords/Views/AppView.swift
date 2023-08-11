//
//  AppView.swift
//  prewords
//
//  Created by Damon Wu on 26/6/2023.
//

import SwiftUI

struct AppView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    var body: some View {
        NavigationView {
            generalView
        }.modifier(AccentColorModifier(isDarkMode: isDarkMode))
    }
    
    @ViewBuilder
    var generalView: some View {
        TabView {
            DashboardView().tabItem {
                Label("主页", systemImage: "house")
            }
            AboutView().tabItem {
                Label("关于", systemImage: "gearshape.fill")
            }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
