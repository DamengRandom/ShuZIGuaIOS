//
//  DashboardView.swift
//  prewords
//
//  Created by Damon Wu on 26/6/2023.
//

import SwiftUI

struct DashboardView: View {
    @StateObject var viewModel = DashboardViewViewModel()
    
    var body: some View {
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
                            
                        }.padding().frame(maxWidth: .infinity)
                            .foregroundColor(Color.white)
                            .background(Color.indigo)
                    }
                    
                    VStack {
                        if (!viewModel.guaCi.isEmpty) {
                            Text("卦爻: \(viewModel.guaCi)")
                        }
                    }
                }.navigationTitle("周易 - 数字卦")
            }.scrollContentBackground(.hidden)
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
