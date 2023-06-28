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
        var yaoCi: Int = 0
        
        switch shang {
            case 0:
                xiaGua = "地"
            case 1:
                xiaGua = "天"
            case 2:
                xiaGua = "泽"
            case 3:
                xiaGua = "火"
            case 4:
                xiaGua = "雷"
            case 5:
                xiaGua = "风"
            case 6:
                xiaGua = "水"
            case 7:
                xiaGua = "山"
            default:
                xiaGua = "无"
        }
        
        switch xia {
            case 0:
                shangGua = "地"
            case 1:
                shangGua = "天"
            case 2:
                shangGua = "泽"
            case 3:
                shangGua = "火"
            case 4:
                shangGua = "雷"
            case 5:
                shangGua = "风"
            case 6:
                shangGua = "水"
            case 7:
                shangGua = "山"
            default:
                shangGua = "无"
        }
        
        switch yao {
            case 0:
                yaoCi = 6
            case 1:
                yaoCi = 1
            case 2:
                yaoCi = 2
            case 3:
                yaoCi = 3
            case 4:
                yaoCi = 4
            case 5:
                yaoCi = 5
            default:
                yaoCi = 0
        }
        
        return "\(shangGua)\(xiaGua)\(yaoCi)"
    }
}
