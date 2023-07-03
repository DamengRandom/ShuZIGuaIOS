//
//  DashboardViewViewModel.swift
//  prewords
//
//  Created by Damon Wu on 26/6/2023.
//

import Foundation

class DashboardViewViewModel: ObservableObject {
    @Published var firstNumberString: String = ""
    @Published var secondNumberString: String = ""
    @Published var thirdNumberString: String = ""
    @Published var errorMessage: String = ""
    @Published var guaCi: String = ""
    @Published var theGua: String = ""
    @Published var allYaos: [String] = []
    @Published var theYao: String = ""
    
    init() {}
    
    func calculate() {
        guard validate() else {
            return
        }
        
        guaCi = getGuaCiString(one: Int(firstNumberString) ?? 0, two: Int(secondNumberString) ?? 0, three: Int(thirdNumberString) ?? 0)
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        
        guard !firstNumberString.trimmingCharacters(in: .whitespaces).isEmpty, !secondNumberString.trimmingCharacters(in: .whitespaces).isEmpty, !thirdNumberString.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please enter a 3 digits integer value"
            
            return false
        }
        
        guard Int(firstNumberString) ?? 0 > 100 && Int(firstNumberString) ?? 0 < 999, Int(secondNumberString) ?? 0 > 100 && Int(secondNumberString) ?? 0 < 999, Int(thirdNumberString) ?? 0 > 100 && Int(thirdNumberString) ?? 0 < 999 else {
            errorMessage = "Please ensure the number value must be 3 digits integer ~~"
            
            return false
        }
        
        return true
    }
    
    private func getGuaCiString(one: Int, two: Int, three: Int) -> String {
        // do gua ci calculations
        let shang: Int = Int(two) % Int(8)
        let xia: Int = Int(one) % Int(8)
        let yao: Int = Int(three) % Int(6)
        
        var shangGua: String = ""
        var xiaGua: String = ""
        var yaoCi: Int = -1
        var shangXiaGua: String = "无无"
        
        xiaGua = getShang(shang: shang)
        
        shangGua = getXia(xia: xia)
        
        yaoCi = getYao(yao: yao)
        
        shangXiaGua = "\(shangGua)\(xiaGua)"
        
        theGua = getTheGua(shangXiaGua: shangXiaGua)
        
        allYaos = getAllYaos(theGua: theGua)
        
        theYao = allYaos[yaoCi == 0 ? 5 : yaoCi - 1]
        
        // test for return a calculated result
        return "\(theGua)\(theYao)"
    }
}
