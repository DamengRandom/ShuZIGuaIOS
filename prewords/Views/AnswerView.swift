//
//  AnswerView.swift
//  prewords
//
//  Created by Damon Wu on 4/7/2023.
//

import SwiftUI
import WebKit

struct AnswerView: View {
    @Binding var output: String

    var body: some View {
        let theAnswer = getAnwers(guaYaoName: output)
        Text("卦爻: \(theAnswer.guaName)\(theAnswer.yaoName)")
        
        Video(videoURL: theAnswer.videos[0]).frame(width: 350, height: 190).cornerRadius(12).padding(.horizontal, 24)
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
