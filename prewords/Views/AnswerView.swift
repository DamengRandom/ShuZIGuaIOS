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
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        let theAnswer = getAnwers(guaYaoName: output)
        NavigationView {
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
                    
                    //                TabView {
                    //                    ForEach(theAnswer.videos, id: \.self) { video in
                    //                        Video(videoURL: video).frame(width: 350, height: 190).cornerRadius(16).padding(.horizontal, 24)
                    //                    }
                    //                }.tabViewStyle(PageTabViewStyle()).frame(height: 200)
                    
                    Text("相关索引").font(.title3).padding(.leading, 8).padding(.top, 24)
                    
                    VerticalWebLinksView(listOfLinks: theAnswer.references, linkTitle: "文章")
                }.padding().modifier(AccentColorModifier(isDarkMode: isDarkMode))
            }.modifier(AccentColorModifier(isDarkMode: isDarkMode))
        }
    }
}

struct AnswerView_Previews: PreviewProvider {
    static var previews: some View {
        AnswerView(output: .constant("test value"))
    }
}

struct Video: UIViewRepresentable {
    let videoURL: String
    
    func makeUIView(context: Context) -> some WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        guard let YoutubeURL = URL(string: videoURL) else {
            return
        }
        
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: YoutubeURL))
    }
}

