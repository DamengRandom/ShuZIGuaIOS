//
//  ContactView.swift
//  prewords
//
//  Created by Damon Wu on 2/8/2023.
//

import SwiftUI

struct ContactView: View {
    @Environment(\.presentationMode)
    var presentationMode
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("微信:").navigationTitle("保持联系🤗").font(.title3).navigationBarItems(trailing: Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Label("", systemImage: "xmark")
                    }))
                    
                    Image("me-wechat").resizable().aspectRatio(contentMode: .fit)
                    
                    HStack {
                        Text("Email: ").font(.title3)
                        Text("damonmaozewu@gmail.com")
                    }.padding(.top, 12)
                    
                    HStack {
                        Text("赞助一下:").font(.title3)
                        
                        Button(action: {
                            openWebSite(urlString: "https://buy.stripe.com/eVag2X8lC3xscDedQQ")
                        }) {
                            Text("赏杯咖啡 (非常感谢～～)").bold()
                        }.font(.title3)
                    }.padding(.top, 12).padding(.bottom, 24)
                    Spacer()
                }.padding()
            }
        }.modifier(AccentColorModifier(isDarkMode: isDarkMode))
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
