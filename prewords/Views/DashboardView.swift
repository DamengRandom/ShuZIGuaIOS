//
//  DashboardView.swift
//  prewords
//
//  Created by Damon Wu on 26/6/2023.
//

import SwiftUI
import Combine

struct DashboardView: View {
    @StateObject var viewModel = DashboardViewViewModel()
    @State private var output: String = "抱歉, 暂无结果 .."
    @State private var isCalculated: Bool = false
    @State var isValid: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    // Color(.systemFill).ignoresSafeArea()
                    NavigationStack {
                        Spacer().frame(height: 32)
                        VStack {
                            Text("* 易经 - 数字卦 *").font(.title).bold().padding(.horizontal)
                            
                            Spacer().frame(height: 24)

                            NumberFieldView(title: "请输入第一个三位数", value: $viewModel.firstNumber, space: 16)
                            NumberFieldView(title: "请输入第二个三位数", value: $viewModel.secondNumber, space: 16)
                            NumberFieldView(title: "请输入第三个三位数", value: $viewModel.thirdNumber, space: 24)
                            
                            Button("点击阅读详细内容") {
                                guard (viewModel.validate()) else {
                                    return
                                }
                                
                                viewModel.calculate()
                                
                                if (!viewModel.guaCi.isEmpty) {
                                    output = "\(viewModel.guaCi)"
                                    
                                    isCalculated = true
                                    
                                    viewModel.firstNumber = ""
                                    viewModel.secondNumber = ""
                                    viewModel.thirdNumber = ""
                                } else {
                                    isCalculated = false
                                }
                            }
                            .padding(.top, 8)
                            .padding(.bottom, 8)
                            .frame(width: 280, height: 40)
                            .foregroundColor(Color.white)
                            .background(Color.indigo)
                            .padding(.horizontal)
                            
                            if (!viewModel.errorMessage.isEmpty) {
                                Text(viewModel.errorMessage).foregroundColor(Color.red)
                            }
                        }.navigationDestination(
                            isPresented: $isCalculated) {
                                AnswerView(output: $output)
                                Text("").hidden()
                            }
                        Spacer().frame(height: 32)
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
