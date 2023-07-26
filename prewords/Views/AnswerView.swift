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
                Text("卦爻: \(theAnswer.guaName)\(theAnswer.yaoName)").font(.largeTitle).padding(.leading, 8).padding(.bottom, 16)

                Text("卦辞: \(theAnswer.guaCiWord)").font(.headline).padding(.bottom, 0).padding(.leading, 8)

                Text("爻辞: \(theAnswer.yaoCiWord)").font(.headline).padding(.top, 1).padding(.leading, 8).padding(.bottom, 16)

                TabView {
                    ForEach(theAnswer.videos, id: \.self) { video in
                        Video(videoURL: video).frame(width: 350, height: 190).cornerRadius(16).padding(.horizontal, 24)
                    }
                }.tabViewStyle(PageTabViewStyle()).frame(height: 200)
                
                Text("相关索引").font(.title).padding(.leading, 8).padding(.bottom, 16).padding(.top, 16)
                
                ForEach(Array(theAnswer.references.enumerated()), id: \.element) { index, reference in
                    Button(action: {
                        openWebSite(urlString: reference)
                    }) {
                        Text("文章 - (\(index + 1))").padding(.leading, 8).padding(.top, 2)
                    }
                }
            }.padding()
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

