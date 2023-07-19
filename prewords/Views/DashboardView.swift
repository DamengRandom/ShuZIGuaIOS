//
//  DashboardView.swift
//  prewords
//
//  Created by Damon Wu on 26/6/2023.
//

import SwiftUI

struct DashboardView: View {
    @StateObject var viewModel = DashboardViewViewModel()
    @State private var output: String = "抱歉, 暂无结果 .."
    @State private var isCalculated: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
//                Color.teal.ignoresSafeArea()
//                Circle().scale(1.8).foregroundColor(.white.opacity(0.2))
//                Circle().scale(1.4).foregroundColor(.white)
                // @TODO add some background effects here
                
                VStack {
                    Text("欢迎使用数字卦").font(.title).bold().padding()
                    
                    TextField("请输入第一个三位数", text: $viewModel.firstNumberString).autocorrectionDisabled().keyboardType(.decimalPad).padding().frame(width: 280, height: 40).background(Color.black.opacity(0.05)).cornerRadius(8).border(.red, width: .infinity)
                    TextField("请输入第二个三位数", text: $viewModel.secondNumberString).autocorrectionDisabled().keyboardType(.decimalPad).padding().frame(width: 280, height: 40).background(Color.black.opacity(0.05)).cornerRadius(8).border(.red, width: .infinity)
                    TextField("请输入第三个三位数", text: $viewModel.thirdNumberString).autocorrectionDisabled().keyboardType(.decimalPad).padding().frame(width: 280, height: 40).background(Color.black.opacity(0.05)).cornerRadius(8).border(.red, width: .infinity)
                    
                    if (isCalculated == false) {
                        Button("计算") {
                            viewModel.calculate()
                            
                            isCalculated = true
                            
                            if (!viewModel.guaCi.isEmpty) {
                                output = "\(viewModel.guaCi)"
                            }
                        }.padding(.top, 8).padding(.bottom, 8).frame(width: 280, height: 40).foregroundColor(Color.white).background(Color.indigo).cornerRadius(8)
                    } else {
                        Button("重新计算") {
                            isCalculated = false
                        }.padding(.top, 8).padding(.bottom, 8).frame(width: 280, height: 40).foregroundColor(Color.white).background(Color.indigo).cornerRadius(8)
                    }
                    
                    if (!viewModel.errorMessage.isEmpty) {
                        Text(viewModel.errorMessage).foregroundColor(Color.red)
                    }
                    
                    if (isCalculated == false) {
                        NavigationLink("点击阅读详细内容", destination: AnswerView(output: $output))
                    }
                }
            }
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
