//
//  SplashScreenView.swift
//  prewords
//
//  Created by Damon Wu on 15/7/2023.
//

import SwiftUI

struct ShuZiGuaView: View {
    var body: some View {
        Image("shuzigua-logo").resizable().aspectRatio(contentMode: .fit)
    }
}

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5

    var body: some View {
        if isActive {
            AppView()
        } else {
            VStack {
                VStack {
                    ShuZiGuaView().font(.system(size: 80)).foregroundColor(.red)
                    Text("易经 - 数字卦").font(Font.custom("Baskerville-Bold", size: 26)).foregroundColor(.black.opacity(0.8))
                }.scaleEffect(size).opacity(opacity).onAppear{
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }.onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.2) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
