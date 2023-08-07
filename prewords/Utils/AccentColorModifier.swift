//
//  AccentColorModifier.swift
//  prewords
//
//  Created by Damon Wu on 7/8/2023.
//

import SwiftUI

struct AccentColorModifier: ViewModifier {
    var isDarkMode: Bool
    
    func body(content: Content) -> some View {
        content.accentColor(Color(isDarkMode ? .white : .black))
    }
}

struct AccentColorModifier_Previews: PreviewProvider {
    static var previews: some View {
        Label(" 何为易经", systemImage: "01.square").modifier(AccentColorModifier(isDarkMode: true))
    }
}
