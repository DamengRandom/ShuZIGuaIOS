//
//  AnswerView.swift
//  prewords
//
//  Created by Damon Wu on 4/7/2023.
//

import SwiftUI

struct AnswerView: View {
    @Binding var output: String

    var body: some View {
        Text("卦爻: \(output)")
    }
}

struct AnswerView_Previews: PreviewProvider {
    static var previews: some View {
        AnswerView(output: .constant("test value"))
    }
}
