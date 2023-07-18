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
            VStack {
                Text("卦爻: \(theAnswer.guaName)\(theAnswer.yaoName)")

                Text("卦辞: \(theAnswer.guaCiWord)")

                Text("爻辞: \(theAnswer.yaoCiWord)")

                ForEach(theAnswer.videos, id: \.self) { video in
                    Video(videoURL: video).frame(width: 350, height: 190).cornerRadius(16).padding(.horizontal, 24)
                }
                
                ForEach(Array(theAnswer.references.enumerated()), id: \.element) { index, reference in
                    Button(action: {
                        openWebSite(urlString: reference)
                    }) {
                        Text("Reference: \(index + 1)")
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

