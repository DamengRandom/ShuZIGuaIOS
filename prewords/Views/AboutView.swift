//
//  AboutView.swift
//  prewords
//
//  Created by Damon Wu on 26/6/2023.
//

import SwiftUI
import SlidingTabView

struct AboutView: View {
    @State private var tabIndex = 0

    var body: some View {
        VStack {
            SlidingTabView(selection: $tabIndex, tabs: ["数字卦的意义", "我"], animation: .easeInOut)
            Spacer()
            if tabIndex == 0 {
                Text("Tab 1 UI")
            } else if tabIndex == 1 {
                Text("Tab 2 UI")
            }
            Spacer()
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
