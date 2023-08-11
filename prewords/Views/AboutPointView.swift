//
//  AboutPointView.swift
//  prewords
//
//  Created by Damon Wu on 25/7/2023.
//

import SwiftUI

struct AboutPointView: View { // NOT USE FOR THIS PROJECT
    let imageName: String
    let title: String
    let description: String
    
    var body: some View {
        HStack(spacing: 24) {
            Image(systemName: imageName).resizable().frame(width: 30, height: 30).aspectRatio(contentMode: .fit)
            VStack(alignment: .leading) {
                Text(title).font(.headline)
                Text(description)
            }
        }.padding()
    }
}

struct AboutPointView_Previews: PreviewProvider {
    static var previews: some View {
        AboutPointView(imageName: "star.fill", title: "Test title", description: "Test description")
    }
}
