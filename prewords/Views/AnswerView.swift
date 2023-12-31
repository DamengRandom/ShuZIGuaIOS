//
//  AnswerView.swift
//  prewords
//
//  Created by Damon Wu on 4/7/2023.
//

import SwiftUI
import WebKit

func openWebSite(urlString: String) {
    if let url = URL(string: urlString) {
        UIApplication.shared.open(url)
    }
}

struct AnswerView: View {
    @Binding var output: String
    
    var body: some View {
        let theAnswer = getAnwers(guaYaoName: output)
        
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    Text("卦爻:").font(.largeTitle).bold().padding(.leading, 8)
                    Text(" \(theAnswer.guaName)\(theAnswer.yaoName)").font(.largeTitle)
                }.padding(.bottom, 16)
                
                HStack {
                    Text("卦辞:").font(.headline).bold().padding(.leading, 8)
                    Text("\(theAnswer.guaCiWord)")
                }.padding(.bottom, 0)
                
                HStack {
                    Text("爻辞:").font(.headline).bold().padding(.top, 1).padding(.leading, 8)
                    Text("\(theAnswer.yaoCiWord)")
                }.padding(.bottom, 0)
                
                HStack {
                    Text("彖传:").font(.headline).bold().padding(.top, 1).padding(.leading, 8)
                    Text("\(theAnswer.tuanCi)")
                }.padding(.bottom, 0)
                
                HStack {
                    Text("大象:").font(.headline).bold().padding(.top, 1).padding(.leading, 8)
                    Text("\(theAnswer.daXiang)")
                }.padding(.bottom, 0)
                
                HStack {
                    Text("小象:").font(.headline).bold().padding(.top, 1).padding(.leading, 8)
                    Text("\(theAnswer.xiaoXiang)")
                }.padding(.bottom, 16)
                
                VStack {
                    // get GuaXiang Lines Graph
                    ForEach(Array(getAllYaosReversed(theGuaName: theAnswer.guaName).enumerated()), id: \.element) { index, eachYao in
                        GuaXiangLinesView(yinYangSymbol: eachYao.contains("六") ? "yin" : "yang")
                    }
                }.frame(maxWidth: .infinity, maxHeight: 140, alignment: .center)
                
                Text("相关索引").font(.title3).padding(.leading, 8).padding(.top, 24)
                
                VerticalWebLinksView(listOfLinks: theAnswer.references, linkTitle: "文章")
            }.padding()
        }
    }
}

struct AnswerView_Previews: PreviewProvider {
    static var previews: some View {
        AnswerView(output: .constant("test value"))
    }
}
