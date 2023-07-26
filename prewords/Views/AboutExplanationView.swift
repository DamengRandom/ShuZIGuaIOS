//
//  AboutExplanationView.swift
//  prewords
//
//  Created by Damon Wu on 25/7/2023.
//

import SwiftUI

struct AboutExplanationView: View {
    var body: some View {
        VStack {
            AboutPointView(imageName: "star.fill", title: "Test title", description: "Test description")
            AboutPointView(imageName: "star.fill", title: "Test title", description: "Test description")
            AboutPointView(imageName: "star.fill", title: "Test title", description: "Test description")
        }
    }
}

struct AboutExplanationView_Previews: PreviewProvider {
    static var previews: some View {
        AboutExplanationView()
    }
}
