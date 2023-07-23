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
    @State var isValid: Bool = false
    
    
    var body: some View {
        NavigationView {
            ZStack {
                // Color(.systemFill).ignoresSafeArea()
                NavigationStack {
                    VStack {
                        Text("欢迎使用数字卦").font(.title).bold().padding()
                        
                        TextField("请输入第一个三位数", text: $viewModel.firstNumberString).padding().frame(width: 280, height: 40).background(Color.black.opacity(0.05)).cornerRadius(8).border(.red, width: .infinity)
                        TextField("请输入第二个三位数", text: $viewModel.secondNumberString).padding().frame(width: 280, height: 40).background(Color.black.opacity(0.05)).cornerRadius(8).border(.red, width: .infinity)
                        TextField("请输入第三个三位数", text: $viewModel.thirdNumberString).padding().frame(width: 280, height: 40).background(Color.black.opacity(0.05)).cornerRadius(8).border(.red, width: .infinity)
                        
                        
                        if (!viewModel.errorMessage.isEmpty) {
                            Text(viewModel.errorMessage).foregroundColor(Color.red)
                        }
                        
                        Button("点击阅读详细内容") {
                            viewModel.calculate()
                            
                            if (!viewModel.guaCi.isEmpty) {
                                output = "\(viewModel.guaCi)"
                                isCalculated = true
                            } else {
                                isCalculated = false
                            }
                            
                            if (!viewModel.guaCi.isEmpty && isCalculated == true) {
                                viewModel.resetFormFields();
                            }
                        }
                        .padding(.top, 8)
                        .padding(.bottom, 8)
                        .frame(width: 280, height: 40)
                        .foregroundColor(Color.white)
                        .background(Color.indigo).cornerRadius(8)
                        .disabled(viewModel.firstNumberString.isEmpty || viewModel.secondNumberString.isEmpty || viewModel.thirdNumberString.isEmpty)
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

struct LiquidSwipe: Shape {
    func path(in rect: CGRect) -> Path {
        return Path { path in
            let width = rect.width
            
            // Step 1: Constructing Rectangle Shape
            
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            
            // Step 2: Constructing Curve Shape
            
            // Start from
            path.move(to: CGPoint(x: width, y: 80))
            
            // Mid between 80 and 180
            let mid: CGFloat = 80 + ((180 - 80) / 2)
            path.addCurve(to: CGPoint(x: width, y: 180), control1: CGPoint(x: width - 50, y: mid), control2: CGPoint(x: width - 50, y: mid))
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
