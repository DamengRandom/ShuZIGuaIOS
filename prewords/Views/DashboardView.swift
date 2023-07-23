//
//  DashboardView.swift
//  prewords
//
//  Created by Damon Wu on 26/6/2023.
//

import SwiftUI
import Combine

extension Binding where Value == String {
    func max(_ limit: Int) -> Self {
        if (self.wrappedValue.count > limit) {
            DispatchQueue.main.async {
                self.wrappedValue = String(self.wrappedValue.dropLast())
            }
        }
        return self
    }
}

struct DashboardView: View {
    @StateObject var viewModel = DashboardViewViewModel()
    @State private var output: String = "抱歉, 暂无结果 .."
    @State private var isCalculated: Bool = false
    @State var isValid: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                // Color(.systemFill).ignoresSafeArea()
                NavigationStack {
                    VStack {
                        Text("欢迎使用数字卦").font(.title).bold().padding()
                        
                        TextField("请输入第一个三位数", text: $viewModel.firstNumber.max(3))
                            .keyboardType(.numberPad)
                            .padding()
                            .frame(width: 280, height: 40)
                            .background(Color.black.opacity(0.05))
                            .border(.red, width: .infinity)
                            .cornerRadius(8)
                            .onReceive(Just(viewModel.firstNumber)) { newValue in
                                let filtered = newValue.filter { "0123456789".contains($0) }
                                
                                if (filtered != newValue) {
                                    self.viewModel.firstNumber = filtered
                                }
                            }
                        
                        TextField("请输入第二个三位数", text: $viewModel.secondNumber.max(3))
                            .keyboardType(.numberPad)
                            .padding()
                            .frame(width: 280, height: 40)
                            .background(Color.black.opacity(0.05))
                            .border(.red, width: .infinity)
                            .cornerRadius(8)
                            .onReceive(Just(viewModel.secondNumber)) { newValue in
                                let filtered = newValue.filter { "0123456789".contains($0) }
                                
                                if (filtered != newValue) {
                                    self.viewModel.secondNumber = filtered
                                }
                            }
                        
                        TextField("请输入第三个三位数", text: $viewModel.thirdNumber.max(3))
                            .keyboardType(.numberPad)
                            .padding()
                            .frame(width: 280, height: 40)
                            .background(Color.black.opacity(0.05))
                            .border(.red, width: .infinity)
                            .cornerRadius(8)
                            .onReceive(Just(viewModel.thirdNumber)) { newValue in
                                let filtered = newValue.filter { "0123456789".contains($0) }
                                
                                if (filtered != newValue) {
                                    self.viewModel.thirdNumber = filtered
                                }
                            }
                        
                        if (!viewModel.errorMessage.isEmpty) {
                            Text(viewModel.errorMessage).foregroundColor(Color.red)
                        }
                        
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
                        .background(Color.indigo).cornerRadius(8)

                        Spacer()
                    }.navigationDestination(
                        isPresented: $isCalculated) {
                            AnswerView(output: $output)
                            Text("")
                                .hidden()
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
