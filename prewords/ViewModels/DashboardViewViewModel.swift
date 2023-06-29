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
        
        shangXiaGua = "\(shangGua)\(xiaGua)"
        
        switch shangXiaGua {
            case "天天":
                theGua = "乾"
            case "地地":
                theGua = "坤"
            case "水雷":
                theGua = "屯"
            case "山水":
                theGua = "蒙"
            case "水天":
                theGua = "需"
            case "天水":
                theGua = "讼"
            case "地水":
                theGua = "师"
            case "水地":
                theGua = "比"
            case "风天":
                theGua = "小畜"
            case "天泽":
                theGua = "履"
            case "地天":
                theGua = "泰"
            case "天地":
                theGua = "否"
            case "天火":
                theGua = "同人"
            case "火天":
                theGua = "大有"
            case "地山":
                theGua = "谦"
            case "雷地":
                theGua = "豫"
            case "泽雷":
                theGua = "随"
            case "山风":
                theGua = "蛊"
            case "地泽":
                theGua = "临"
            case "风地":
                theGua = "观"
            case "火雷":
                theGua = "噬嗑"
            case "山火":
                theGua = "贲"
            case "山地":
                theGua = "剥"
            case "地雷":
                theGua = "复"
            case "天雷":
                theGua = "无妄"
            case "山天":
                theGua = "大畜"
            case "山雷":
                theGua = "颐"
            case "泽风":
                theGua = "大过"
            case "水水":
                theGua = "坎"
            case "火火":
                theGua = "离"
            case "泽山":
                theGua = "咸"
            case "雷风":
                theGua = "恒"
            case "天山":
                theGua = "遁"
            case "雷天":
                theGua = "大壮"
            case "火地":
                theGua = "晋"
            case "地火":
                theGua = "明夷"
            case "风火":
                theGua = "家人"
            case "火泽":
                theGua = "睽"
            case "水山":
                theGua = "蹇"
            case "雷水":
                theGua = "解"
            case "山泽":
                theGua = "损"
            case "风雷":
                theGua = "益"
            case "泽天":
                theGua = "夬"
            case "天风":
                theGua = "姤"
            case "泽地":
                theGua = "萃"
            case "地风":
                theGua = "升"
            case "泽水":
                theGua = "困"
            case "水风":
                theGua = "井"
            case "泽火":
                theGua = "革"
            case "火风":
                theGua = "鼎"
            case "雷雷":
                theGua = "震"
            case "山山":
                theGua = "艮"
            case "风山":
                theGua = "渐"
            case "雷泽":
                theGua = "归妹"
            case "雷火":
                theGua = "丰"
            case "火山":
                theGua = "旅"
            case "风风":
                theGua = "巽"
            case "泽泽":
                theGua = "兑"
            case "风水":
                theGua = "涣"
            case "水泽":
                theGua = "节"
            case "风泽":
                theGua = "中孚"
            case "雷山":
                theGua = "小过"
            case "水火":
                theGua = "既济"
            case "火水":
                theGua = "未济"
            default:
                theGua = "无"
          }
        
        switch theGua {
            case "乾":
                allYaos = ["初九", "九二", "九三", "九四", "九五", "上九"]
            case "坤":
                allYaos = ["初六", "六二", "六三", "六四", "六五", "上六"]
            case "屯":
                allYaos = ["初九", "六二", "六三", "六四", "九五", "上六"]
            case "蒙":
                allYaos = ["初六", "九二", "六三", "六四", "六五", "上九"]
            case "需":
                allYaos = ["初九", "九二", "九三", "六四", "九五", "上六"]
            case "讼":
                allYaos = ["初六", "九二", "六三", "九四", "九五", "上九"]
            case "师":
                allYaos = ["初六", "九二", "六三", "六四", "六五", "上六"]
            case "比":
                allYaos = ["初六", "六二", "六三", "六四", "九五", "上六"]
            case "小畜":
                allYaos = ["初九", "九二", "九三", "六四", "九五", "上九"]
            case "履":
                allYaos = ["初九", "九二", "六三", "九四", "九五", "上九"]
            case "泰":
                allYaos = ["初九", "九二", "九三", "六四", "六五", "上六"]
            case "否":
                allYaos = ["初六", "六二", "六三", "九四", "九五", "上九"]
            case "同人":
                allYaos = ["初九", "六二", "九三", "九四", "九五", "上九"]
            case "大有":
                allYaos = ["初九", "九二", "九三", "九四", "六五", "上九"]
            case "谦":
                allYaos = ["初六", "六二", "九三", "六四", "六五", "上六"]
            case "豫":
                allYaos = ["初六", "六二", "六三", "九四", "六五", "上六"]
            case "随":
                allYaos = ["初九", "六二", "六三", "九四", "九五", "上六"]
            case "蛊":
                allYaos = ["初六", "九二", "九三", "六四", "六五", "上九"]
            case "临":
                allYaos = ["初九", "九二", "六三", "六四", "六五", "上六"]
            case "观":
                allYaos = ["初六", "六二", "六三", "六四", "九五", "上九"]
            case "噬嗑":
                allYaos = ["初九", "六二", "六三", "九四", "六五", "上九"]
            case "贲":
                allYaos = ["初九", "六二", "九三", "六四", "六五", "上九"]
            case "剥":
                allYaos = ["初六", "六二", "六三", "六四", "六五", "上九"]
            case "复":
                allYaos = ["初九", "六二", "六三", "六四", "六五", "上六"]
            case "无妄":
                allYaos = ["初九", "六二", "六三", "九四", "九五", "上九"]
            case "大畜":
                allYaos = ["初九", "九二", "九三", "六四", "六五", "上九"]
            case "颐":
                allYaos = ["初九", "六二", "六三", "六四", "六五", "上九"]
            case "大过":
                allYaos = ["初六", "九二", "九三", "九四", "九五", "上六"]
            case "坎":
                allYaos = ["初六", "九二", "六三", "六四", "九五", "上六"]
            case "离":
                allYaos = ["初九", "六二", "九三", "九四", "六五", "上九"]
            case "咸":
                allYaos = ["初六", "六二", "九三", "九四", "九五", "上六"]
            case "恒":
                allYaos = ["初六", "九二", "九三", "九四", "六五", "上六"]
            case "遁":
                allYaos = ["初六", "六二", "九三", "九四", "九五", "上九"]
            case "大壮":
                allYaos = ["初九", "九二", "九三", "九四", "六五", "上六"]
            case "晋":
                allYaos = ["初六", "六二", "六三", "九四", "六五", "上九"]
            case "明夷":
                allYaos = ["初九", "六二", "九三", "六四", "六五", "上六"]
            case "家人":
                allYaos = ["初九", "六二", "九三", "六四", "九五", "上九"]
            case "睽":
                allYaos = ["初九", "九二", "六三", "九四", "六五", "上九"]
            case "蹇":
                allYaos = ["初六", "六二", "九三", "六四", "九五", "上六"]
            case "解":
                allYaos = ["初六", "九二", "六三", "九四", "六五", "上六"]
            case "损":
                allYaos = ["初九", "九二", "六三", "六四", "六五", "上九"]
            case "益":
                allYaos = ["初九", "六二", "六三", "六四", "九五", "上九"]
            case "夬":
                allYaos = ["初九", "九二", "九三", "九四", "九五", "上六"]
            case "姤":
                allYaos = ["初六", "九二", "九三", "九四", "九五", "上九"]
            case "萃":
                allYaos = ["初六", "六二", "六三", "九四", "九五", "上六"]
            case "升":
                allYaos = ["初六", "九二", "九三", "六四", "六五", "上六"]
            case "困":
                allYaos = ["初六", "九二", "六三", "九四", "九五", "上六"]
            case "井":
                allYaos = ["初六", "九二", "九三", "六四", "九五", "上六"]
            case "革":
                allYaos = ["初九", "六二", "九三", "九四", "九五", "上六"]
            case "鼎":
                allYaos = ["初六", "九二", "九三", "九四", "六五", "上九"]
            case "震":
                allYaos = ["初九", "六二", "六三", "九四", "六五", "上六"]
            case "艮":
                allYaos = ["初六", "六二", "九三", "六四", "六五", "上九"]
            case "渐":
                allYaos = ["初六", "六二", "九三", "六四", "九五", "上九"]
            case "归妹":
                allYaos = ["初九", "九二", "六三", "九四", "六五", "上六"]
            case "丰":
                allYaos = ["初九", "六二", "九三", "九四", "六五", "上六"]
            case "旅":
                allYaos = ["初六", "六二", "九三", "九四", "六五", "上九"]
            case "巽":
                allYaos = ["初六", "九二", "九三", "六四", "九五", "上九"]
            case "兑":
                allYaos = ["初九", "九二", "六三", "九四", "九五", "上六"]
            case "涣":
                allYaos = ["初六", "九二", "六三", "六四", "九五", "上九"]
            case "节":
                allYaos = ["初九", "九二", "六三", "六四", "九五", "上六"]
            case "中孚":
                allYaos = ["初九", "九二", "六三", "六四", "九五", "上九"]
            case "小过":
                allYaos = ["初六", "六二", "九三", "九四", "六五", "上六"]
            case "既济":
                allYaos = ["初九", "六二", "九三", "六四", "九五", "上六"]
            case "未济":
                allYaos = ["初六", "九二", "六三", "九四", "六五", "上九"]
            default:
                allYaos = ["无", "无", "无", "无", "无", "无"]
          }
        
        theYao = allYaos[yaoCi == 0 ? 5 : yaoCi - 1]
        
        return "\(theGua)\(theYao)"
    }
}
