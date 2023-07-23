//
//  DashboardViewViewModel.swift
//  prewords
//
//  Created by Damon Wu on 26/6/2023.
//

import Foundation

class DashboardViewViewModel: ObservableObject {
    @Published var firstNumber: String = ""
    @Published var secondNumber: String = ""
    @Published var thirdNumber: String = ""
    
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
        
        guaCi = getGuaCiString(one: Int(firstNumber) ?? 0, two: Int(secondNumber) ?? 0, three: Int(thirdNumber) ?? 0)
    }
    
    func validate() -> Bool {
        errorMessage = ""
        
        guard firstNumber.count == 3 && secondNumber.count == 3 && thirdNumber.count == 3 else {
            errorMessage = "Please ensure the value must be 3 digits"
            
            return false
        }
        
        guard Int(firstNumber) ?? 0 > 100 && Int(firstNumber) ?? 0 < 999, Int(secondNumber) ?? 0 > 100 && Int(secondNumber) ?? 0 < 999, Int(thirdNumber) ?? 0 > 100 && Int(thirdNumber) ?? 0 < 999 else {
            errorMessage = "Please ensure the value must between 100 and 999 ~~"
            
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
        
        shangXiaGua = "\(xiaGua)\(shangGua)"
        
        theGua = getTheGua(shangXiaGua: shangXiaGua)
        
        allYaos = getAllYaos(theGua: theGua)
        
        theYao = allYaos[yaoCi == 0 ? 5 : yaoCi - 1]
        
        // test for return a calculated result
        print(getAnwers(guaYaoName: "\(theGua)\(theYao)"))
        
        return "\(theGua)\(theYao)"
    }
}
