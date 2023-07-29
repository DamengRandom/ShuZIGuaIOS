//
//  NumberFieldView.swift
//  prewords
//
//  Created by Damon Wu on 23/7/2023.
//

import SwiftUI
import Combine

struct NumberFieldView: View {
    var title: String
    @Binding var value: String
    var space: CGFloat

    var body: some View {
        TextField(title, text: $value)
            .keyboardType(.numberPad)
            .padding()
            .frame(width: 280, height: 40)
            .background(Color.black.opacity(0.05))
            .border(.red, width: .infinity)
            .onReceive(Just(value)) { newValue in
                let filtered = newValue.filter { "0123456789".contains($0) }
                
                if (filtered != newValue) {
                    self.value = filtered
                }
            }.cornerRadius(8)
        Spacer().frame(height: space)
    }
}

struct NumberFieldView_Previews: PreviewProvider {
    static var previews: some View {
        @State var value: String = "123"
        NumberFieldView(title: "请输入第一个三位数", value: $value, space: 16)
    }
}
