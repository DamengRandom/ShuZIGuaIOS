//
//  AboutView.swift
//  prewords
//
//  Created by Damon Wu on 26/6/2023.
//

import SwiftUI

struct AboutView: View {
    @State private var tabIndex = 0
    @State var showContactView = false
    @Environment(\.colorScheme) private var colorScheme
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        NavigationStack {
            NavigationView {
                ScrollView {
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
                                        Label("周易概述", systemImage: "01.square")
                                        Spacer()
                                        Image(systemName: "chevron.right")
                                    }
                                }.padding()
                                
                                HStack {
                                    NavigationLink {
                                        ZaGuaZhuanView()
                                    } label: {
                                        Label("杂卦传", systemImage: "02.square")
                                        Spacer()
                                        Image(systemName: "chevron.right")
                                    }
                                }.padding(.top, -16).padding()
                                HStack {
                                    NavigationLink {
                                        XuGuaZhuanView()
                                    } label: {
                                        Label("序卦传", systemImage: "03.square")
                                        Spacer()
                                        Image(systemName: "chevron.right")
                                    }
                                }.padding(.top, -16).padding()
                            }.background(Color(.systemFill)).overlay {
                                RoundedRectangle(cornerRadius: 8).stroke(Color(.systemFill), lineWidth: 1)
                            }.cornerRadius(8).padding(.horizontal, 20).padding(.vertical, 10)
                        }
                        VStack(alignment: .leading) {
                            Text("其他功能").font(.headline).padding(.horizontal, 20).padding(.vertical, 0)
                            VStack(alignment: .leading, spacing: 8) {
                                HStack {
                                    NavigationLink {
                                        TermsOfServiceView()
                                    } label: {
                                        Label("服务条款", systemImage: "list.bullet.rectangle")
                                        Spacer()
                                        Image(systemName: "chevron.right")
                                    }
                                }.padding(.horizontal).padding(.top, 16)
                                
                                HStack {
                                    NavigationLink {
                                        LegalStatementsView()
                                    } label: {
                                        Label("免责声明", systemImage: "exclamationmark.bubble")
                                        Spacer()
                                        Image(systemName: "chevron.right")
                                    }
                                }.padding(.horizontal).padding(.top, 16)
                                
                                HStack {
                                    Label("选择主题", systemImage: "ellipsis.message")
                                    Spacer()
                                    Toggle("", isOn: $isDarkMode)
                                }.padding(.horizontal).padding(.top, 8)
                                
                                HStack {
                                    Label("当前版本", systemImage: "number.square")
                                    Text("(V1.0.1)").font(.caption)
                                }.padding(.horizontal).padding(.top, 8).padding(.bottom, 24)
                            }.background(Color(.systemFill)).overlay {
                                RoundedRectangle(cornerRadius: 8).stroke(Color(.systemFill), lineWidth: 1)
                            }.cornerRadius(8).padding(.horizontal, 20).padding(.vertical, 10)
                        }
                        Spacer()
                    }
                }
            }.navigationBarItems(trailing: Button("保持联系", action: {
                self.showContactView = true
            })).sheet(isPresented: $showContactView, content: {
                ContactView()
            }).padding()
        }.modifier(AccentColorModifier(isDarkMode: isDarkMode))
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
