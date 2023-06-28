//
//  AppView.swift
//  prewords
//
//  Created by Damon Wu on 26/6/2023.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        generalView
    }
    
    @ViewBuilder
    var generalView: some View {
        TabView {
            DashboardView().tabItem {
                Label("数字卦", systemImage: "house")
            }
            AboutView().tabItem {
                Label("关于", systemImage: "person.circle")
            }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
