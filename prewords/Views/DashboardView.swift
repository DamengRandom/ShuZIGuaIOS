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
    
    var body: some View {
        VStack {
            Form {
                if (!viewModel.errorMessage.isEmpty) {
                    Text(viewModel.errorMessage).foregroundColor(Color.red)
                }

                VStack(alignment: .leading) {
                    Section(header: Text("请输入第一个三位数")){
                        TextField("", text: $viewModel.firstNumberString).autocorrectionDisabled().keyboardType(.decimalPad)
                    }
                    
                    Section(header: Text("请输入第二个三位数")){
                        TextField("", text: $viewModel.secondNumberString).autocorrectionDisabled().keyboardType(.decimalPad)
                    }
                    
                    Section(header: Text("请输入第三个三位数")){
                        TextField("", text: $viewModel.thirdNumberString).autocorrectionDisabled().keyboardType(.decimalPad)
                    }
                    
                    VStack(alignment: .center) {
                        Button("计算") {
                            viewModel.calculate()
                            if (!viewModel.guaCi.isEmpty) {
                                output = "\(viewModel.guaCi)"
                            }
                        }.padding().frame(maxWidth: .infinity)
//                            .foregroundColor(Color.white)
//                            .background(Color.indigo)
                    }
                }
            }.scrollContentBackground(.hidden)
        
            VStack(alignment: .center) {
                NavigationLink("点击阅读详细内容", destination: AnswerView(output: $output))
            }
            
            Spacer()
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
