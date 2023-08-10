//
//  GuaYaoHelpers.swift
//  prewords
//
//  Created by Damon Wu on 3/7/2023.
//

import Foundation

// get shang gua name
func getShang(shang: Int) -> String {
    switch shang {
    case 0:
        return "地"
    case 1:
        return "天"
    case 2:
        return "泽"
    case 3:
        return "火"
    case 4:
        return "雷"
    case 5:
        return "风"
    case 6:
        return "水"
    case 7:
        return "山"
    default:
        return "无"
    }
}

// get xia gua name
func getXia(xia: Int) -> String {
    switch xia {
    case 0:
        return "地"
    case 1:
        return "天"
    case 2:
        return "泽"
    case 3:
        return "火"
    case 4:
        return "雷"
    case 5:
        return "风"
    case 6:
        return "水"
    case 7:
        return "山"
    default:
        return "无"
    }
}

// get yao position
func getYao(yao: Int) -> Int {
    switch yao {
    case 0:
        return 6
    case 1:
        return 1
    case 2:
        return 2
    case 3:
        return 3
    case 4:
        return 4
    case 5:
        return 5
    default:
        return 0
    }
}

// get shang + xia gua (word)
func getTheGua(shangXiaGua: String) -> String {
    switch shangXiaGua {
    case "天天":
        return "乾"
    case "地地":
        return "坤"
    case "水雷":
        return "屯"
    case "山水":
        return "蒙"
    case "水天":
        return "需"
    case "天水":
        return "讼"
    case "地水":
        return "师"
    case "水地":
        return "比"
    case "风天":
        return "小畜"
    case "天泽":
        return "履"
    case "地天":
        return "泰"
    case "天地":
        return "否"
    case "天火":
        return "同人"
    case "火天":
        return "大有"
    case "地山":
        return "谦"
    case "雷地":
        return "豫"
    case "泽雷":
        return "随"
    case "山风":
        return "蛊"
    case "地泽":
        return "临"
    case "风地":
        return "观"
    case "火雷":
        return "噬嗑"
    case "山火":
        return "贲"
    case "山地":
        return "剥"
    case "地雷":
        return "复"
    case "天雷":
        return "无妄"
    case "山天":
        return "大畜"
    case "山雷":
        return "颐"
    case "泽风":
        return "大过"
    case "水水":
        return "坎"
    case "火火":
        return "离"
    case "泽山":
        return "咸"
    case "雷风":
        return "恒"
    case "天山":
        return "遁"
    case "雷天":
        return "大壮"
    case "火地":
        return "晋"
    case "地火":
        return "明夷"
    case "风火":
        return "家人"
    case "火泽":
        return "睽"
    case "水山":
        return "蹇"
    case "雷水":
        return "解"
    case "山泽":
        return "损"
    case "风雷":
        return "益"
    case "泽天":
        return "夬"
    case "天风":
        return "姤"
    case "泽地":
        return "萃"
    case "地风":
        return "升"
    case "泽水":
        return "困"
    case "水风":
        return "井"
    case "泽火":
        return "革"
    case "火风":
        return "鼎"
    case "雷雷":
        return "震"
    case "山山":
        return "艮"
    case "风山":
        return "渐"
    case "雷泽":
        return "归妹"
    case "雷火":
        return "丰"
    case "火山":
        return "旅"
    case "风风":
        return "巽"
    case "泽泽":
        return "兑"
    case "风水":
        return "涣"
    case "水泽":
        return "节"
    case "风泽":
        return "中孚"
    case "雷山":
        return "小过"
    case "水火":
        return "既济"
    case "火水":
        return "未济"
    default:
        return "无"
    }
}

// get all possible yaos
func getAllYaos(theGua: String) -> [String] {
    switch theGua {
    case "乾":
        return ["初九", "九二", "九三", "九四", "九五", "上九"]
    case "坤":
        return ["初六", "六二", "六三", "六四", "六五", "上六"]
    case "屯":
        return ["初九", "六二", "六三", "六四", "九五", "上六"]
    case "蒙":
        return ["初六", "九二", "六三", "六四", "六五", "上九"]
    case "需":
        return ["初九", "九二", "九三", "六四", "九五", "上六"]
    case "讼":
        return ["初六", "九二", "六三", "九四", "九五", "上九"]
    case "师":
        return ["初六", "九二", "六三", "六四", "六五", "上六"]
    case "比":
        return ["初六", "六二", "六三", "六四", "九五", "上六"]
    case "小畜":
        return ["初九", "九二", "九三", "六四", "九五", "上九"]
    case "履":
        return ["初九", "九二", "六三", "九四", "九五", "上九"]
    case "泰":
        return ["初九", "九二", "九三", "六四", "六五", "上六"]
    case "否":
        return ["初六", "六二", "六三", "九四", "九五", "上九"]
    case "同人":
        return ["初九", "六二", "九三", "九四", "九五", "上九"]
    case "大有":
        return ["初九", "九二", "九三", "九四", "六五", "上九"]
    case "谦":
        return ["初六", "六二", "九三", "六四", "六五", "上六"]
    case "豫":
        return ["初六", "六二", "六三", "九四", "六五", "上六"]
    case "随":
        return ["初九", "六二", "六三", "九四", "九五", "上六"]
    case "蛊":
        return ["初六", "九二", "九三", "六四", "六五", "上九"]
    case "临":
        return ["初九", "九二", "六三", "六四", "六五", "上六"]
    case "观":
        return ["初六", "六二", "六三", "六四", "九五", "上九"]
    case "噬嗑":
        return ["初九", "六二", "六三", "九四", "六五", "上九"]
    case "贲":
        return ["初九", "六二", "九三", "六四", "六五", "上九"]
    case "剥":
        return ["初六", "六二", "六三", "六四", "六五", "上九"]
    case "复":
        return ["初九", "六二", "六三", "六四", "六五", "上六"]
    case "无妄":
        return ["初九", "六二", "六三", "九四", "九五", "上九"]
    case "大畜":
        return ["初九", "九二", "九三", "六四", "六五", "上九"]
    case "颐":
        return ["初九", "六二", "六三", "六四", "六五", "上九"]
    case "大过":
        return ["初六", "九二", "九三", "九四", "九五", "上六"]
    case "坎":
        return ["初六", "九二", "六三", "六四", "九五", "上六"]
    case "离":
        return ["初九", "六二", "九三", "九四", "六五", "上九"]
    case "咸":
        return ["初六", "六二", "九三", "九四", "九五", "上六"]
    case "恒":
        return ["初六", "九二", "九三", "九四", "六五", "上六"]
    case "遁":
        return ["初六", "六二", "九三", "九四", "九五", "上九"]
    case "大壮":
        return ["初九", "九二", "九三", "九四", "六五", "上六"]
    case "晋":
        return ["初六", "六二", "六三", "九四", "六五", "上九"]
    case "明夷":
        return ["初九", "六二", "九三", "六四", "六五", "上六"]
    case "家人":
        return ["初九", "六二", "九三", "六四", "九五", "上九"]
    case "睽":
        return ["初九", "九二", "六三", "九四", "六五", "上九"]
    case "蹇":
        return ["初六", "六二", "九三", "六四", "九五", "上六"]
    case "解":
        return ["初六", "九二", "六三", "九四", "六五", "上六"]
    case "损":
        return ["初九", "九二", "六三", "六四", "六五", "上九"]
    case "益":
        return ["初九", "六二", "六三", "六四", "九五", "上九"]
    case "夬":
        return ["初九", "九二", "九三", "九四", "九五", "上六"]
    case "姤":
        return ["初六", "九二", "九三", "九四", "九五", "上九"]
    case "萃":
        return ["初六", "六二", "六三", "九四", "九五", "上六"]
    case "升":
        return ["初六", "九二", "九三", "六四", "六五", "上六"]
    case "困":
        return ["初六", "九二", "六三", "九四", "九五", "上六"]
    case "井":
        return ["初六", "九二", "九三", "六四", "九五", "上六"]
    case "革":
        return ["初九", "六二", "九三", "九四", "九五", "上六"]
    case "鼎":
        return ["初六", "九二", "九三", "九四", "六五", "上九"]
    case "震":
        return ["初九", "六二", "六三", "九四", "六五", "上六"]
    case "艮":
        return ["初六", "六二", "九三", "六四", "六五", "上九"]
    case "渐":
        return ["初六", "六二", "九三", "六四", "九五", "上九"]
    case "归妹":
        return ["初九", "九二", "六三", "九四", "六五", "上六"]
    case "丰":
        return ["初九", "六二", "九三", "九四", "六五", "上六"]
    case "旅":
        return ["初六", "六二", "九三", "九四", "六五", "上九"]
    case "巽":
        return ["初六", "九二", "九三", "六四", "九五", "上九"]
    case "兑":
        return ["初九", "九二", "六三", "九四", "九五", "上六"]
    case "涣":
        return ["初六", "九二", "六三", "六四", "九五", "上九"]
    case "节":
        return ["初九", "九二", "六三", "六四", "九五", "上六"]
    case "中孚":
        return ["初九", "九二", "六三", "六四", "九五", "上九"]
    case "小过":
        return ["初六", "六二", "九三", "九四", "六五", "上六"]
    case "既济":
        return ["初九", "六二", "九三", "六四", "九五", "上六"]
    case "未济":
        return ["初六", "九二", "六三", "九四", "六五", "上九"]
    default:
        return ["无", "无", "无", "无", "无", "无"]
    }
}

func getAllYaosReversed(theGuaName: String) -> [String] {
    return getAllYaos(theGua: theGuaName).reversed()
}
