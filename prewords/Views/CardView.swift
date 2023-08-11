//
//  CardView.swift
//  prewords
//
//  Created by Damon Wu on 26/7/2023.
//

import SwiftUI

// Just for study not going to use this UI [NOT USE FOR THIS PORJECT]

struct CardView: View {
    let card: Card
    var body: some View {
        VStack(alignment: .leading) {
            Text(card.title).font(.headline)
            Text(card.description)
            
            Spacer()
            
            HStack {
                Label("", systemImage: "person.3")
                Spacer()
                Label("", systemImage: "clock")
            }
        }.background(card.theme)
    }
}

struct CardView_Previews: PreviewProvider {
    static var mockCard = Card.sampleData[0]
    
    static var previews: some View {
        CardView(card: mockCard)
            .background(.yellow)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
