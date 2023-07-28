//
//  AboutView.swift
//  prewords
//
//  Created by Damon Wu on 26/6/2023.
//

import SwiftUI

struct AboutView: View {
    @State private var tabIndex = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack {
                Text("数字卦简介").font(.title)
                
                Text("description here ...")
            }.padding()
            
            VStack(alignment: .leading) {
                Text("其它").font(.title).padding()
                
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Label("捐助", systemImage: "heart.fill")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 15)
                    .padding(.bottom, 5)
                    
                    HStack {
                        Label("开发者", systemImage: "person.fill")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 5)
                    .padding(.bottom, 15)
                }.background(Color(.systemFill)).padding(.horizontal, 20).padding(.vertical, 10).cornerRadius(10)
            }
            
            VStack(alignment: .leading) {
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Label("捐助", systemImage: "heart.fill")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 15)
                    .padding(.bottom, 5)
                    
                    HStack {
                        Label("开发者", systemImage: "person.fill")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 5)
                    .padding(.bottom, 15)
                }.background(Color(.systemFill)).padding(.horizontal, 20).padding(.vertical, 10).cornerRadius(10)
            }
            
            VStack(alignment: .leading) {
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Label("捐助", systemImage: "heart.fill")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 15)
                    .padding(.bottom, 5)
                    
                    HStack {
                        Label("开发者", systemImage: "person.fill")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 5)
                    .padding(.bottom, 15)
                }.background(Color(.systemFill)).padding(.horizontal, 20).padding(.vertical, 10).cornerRadius(10)
            }
            
            Spacer()
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
