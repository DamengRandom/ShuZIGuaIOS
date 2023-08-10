//
//  GuaXiangLinesView.swift
//  prewords
//
//  Created by Damon Wu on 10/8/2023.
//

import SwiftUI

struct Rectangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: 10, y: 20))
        path.addLine(to: CGPoint(x: 120, y: 20))
        path.addLine(to: CGPoint(x: 120, y: 30))
        path.addLine(to: CGPoint(x: 10, y: 30))

        return path
    }
}

struct ContrastRectangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: 10, y: 20))
        path.addLine(to: CGPoint(x: 20, y: 20))
        path.addLine(to: CGPoint(x: 20, y: 30))
        path.addLine(to: CGPoint(x: 10, y: 30))

        return path
    }
}


struct GuaXiangLinesView: View {
    @State var yinYangSymbol = "yin"
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        switch(yinYangSymbol) {
        case "yang":
            Rectangle().fill(Color(isDarkMode ? .white : .black)).frame(width: 110, height: 20)
        case "yin":
            Rectangle().fill(Color(isDarkMode ? .white : .black)).frame(width: 110, height: 20).overlay( ContrastRectangle().fill(Color(isDarkMode ? .black : .white)).frame(width: 10))
        default:
            Rectangle().fill(Color(isDarkMode ? .white : .black)).frame(width: 110, height: 20)
        }
    }
}

struct GuaXiangLinesView_Previews: PreviewProvider {
    
    static var previews: some View {
        VStack {
            ForEach(Array(getAllYaos(theGua: "兑").enumerated()), id: \.element) { index, eachYao in
//                Text("\(eachYao)") // TEST ONLY
                GuaXiangLinesView(yinYangSymbol: eachYao.contains("六") ? "yin" : "yang")
            }
        }.frame(maxWidth: .infinity, maxHeight: 140, alignment: .center)
        
    }
    
}
