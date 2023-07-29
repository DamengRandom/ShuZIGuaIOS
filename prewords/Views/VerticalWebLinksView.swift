//
//  VerticalWebLinksView.swift
//  prewords
//
//  Created by Damon Wu on 29/7/2023.
//

import SwiftUI

struct VerticalWebLinksView: View {
    let listOfLinks: [String]
    let linkTitle: String
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(Array(listOfLinks.enumerated()), id: \.element) { index, reference in
                    Button(action: {
                        openWebSite(urlString: reference)
                    }) {
                        Text("\(linkTitle) [\(index + 1)]")
                            .frame(width: 100, height: 100)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.black, lineWidth: 3)
                            )
                            .accentColor(.black)
                    }
                }.padding(.trailing, 8)
            }.padding(.leading, 10).padding(.vertical)
        }
    }
}

struct VerticalWebLinksView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalWebLinksView(listOfLinks: ["test1", "test2", "test3", "test 4"], linkTitle: "da文章")
    }
}
