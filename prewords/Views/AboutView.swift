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
        NavigationStack {
            VStack(alignment: .leading) {
                Spacer()

                VStack {
                    Text("数字卦简介").font(.title)
                    
                    Text("周易数字卦是《易经》中的一种卦法解析方式。数字卦是易经应用的一个重要组成部分，它为人们提供了一种系统化和规范化的方式来理解和运用《易经》，使这一古老智慧在当代依然有着实际的价值和意义。").padding(.top, 16).padding(.bottom, 16).padding(.horizontal, 4)
                }.padding()
                
                VStack(alignment: .leading) {
                    Text("易经相关").font(.headline).padding(.horizontal, 20).padding(.vertical, 0)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        HStack {
                            NavigationLink {
                                IChingIntroView()
                            } label: {
                                Label("何为易经", systemImage: "01.square")
                                Spacer()
                                Image(systemName: "chevron.right")
                            }.accentColor(Color.black)
                        }.padding()
                    }.background(Color(.systemFill)).overlay {
                        RoundedRectangle(cornerRadius: 8).stroke(Color(.systemFill), lineWidth: 1)
                    }.cornerRadius(8).padding(.horizontal, 20).padding(.vertical, 10)
                }
                
                VStack(alignment: .leading) {
                    Text("其他功能").font(.headline).padding(.horizontal, 20).padding(.vertical, 0)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        HStack {
                            NavigationLink {
                                AboutExplanationView()
                            } label: {
                                Label("服务条款", systemImage: "list.bullet.rectangle.portrait")
                                Spacer()
                                Image(systemName: "chevron.right")
                            }.accentColor(Color.black)
                        }.padding(.horizontal).padding(.top, 16)
                        HStack {
                            NavigationLink {
                                AboutExplanationView()
                            } label: {
                                Label("保持联系", systemImage: "iphone.gen1.radiowaves.left.and.right.circle")
                                Spacer()
                                Image(systemName: "chevron.right")
                            }.accentColor(Color.black)
                        }.padding(.horizontal).padding(.top, 12)
                        HStack {
                            NavigationLink {
                                AboutExplanationView()
                            } label: {
                                Label("捐助", systemImage: "heart")
                                Spacer()
                                Image(systemName: "chevron.right")
                            }.accentColor(Color.black)
                        }.padding(.horizontal).padding(.top, 12)
                        HStack {
                            NavigationLink {
                                AboutExplanationView()
                            } label: {
                                Label("留言", systemImage: "ellipsis.message")
                                Spacer()
                                Image(systemName: "chevron.right")
                            }.accentColor(Color.black)
                        }.padding(.horizontal).padding(.top, 12).padding(.bottom, 16)
                    }.background(Color(.systemFill)).overlay {
                        RoundedRectangle(cornerRadius: 8).stroke(Color(.systemFill), lineWidth: 1)
                    }.cornerRadius(8).padding(.horizontal, 20).padding(.vertical, 10)
                }
                
                Spacer()
            }
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
