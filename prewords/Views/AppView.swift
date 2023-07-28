//
//  AppView.swift
//  prewords
//
//  Created by Damon Wu on 26/6/2023.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        NavigationView {
            generalView
        }
    }
    
    @ViewBuilder
    var generalView: some View {
        TabView {
            DashboardView().tabItem {
                Label("", systemImage: "house")
            }
            AboutView().tabItem {
                Label("", systemImage: "gearshape.fill")
            }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
