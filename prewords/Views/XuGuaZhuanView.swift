//
//  XuGuaZhuanView.swift
//  prewords
//
//  Created by Damon Wu on 9/8/2023.
//

import SwiftUI

struct XuGuaZhuanView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    @State var segmentedChoice = 0

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("序卦传").font(.largeTitle)
                    
                    Picker("", selection: $segmentedChoice) {
                        Text("上篇").tag(0)
                        Text("下篇").tag(1)
                    }.padding(.vertical).pickerStyle(SegmentedPickerStyle())
                    
                    if (segmentedChoice == 0) {
                        SegmentOne()
                    }
                    
                    if (segmentedChoice == 1) {
                        SegmentTwo()
                    }
                }
            }
        }.padding().modifier(AccentColorModifier(isDarkMode: isDarkMode))
    }
}

// Segment 1 View
struct SegmentOne: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(
                """
                有天地，然后万物生焉。盈天地之间者唯万物，故受之以《屯》。《屯》者，盈也；物之始生也。物生必蒙，故受之以《蒙》。《蒙》者，蒙也；物之稚也。物稚不可不养也，故受之以《需》。《需》者，饮食之道也。饮食必有讼，故受之以《讼》。讼必有众起，故受之以《师》。《师》者，众也。众必有所比，故受之以《比》。《比》者，比也。比必有所畜，故受之以《小畜》。物畜然后有礼，故受之以《履》。履而泰，然后安，故受之以《泰》。《泰》者，通也。物不可以终通，故受之以《否》。物不可以终否，故受之以《同人》。与人同者物必归焉，故受之以《大有》。有大者不可以盈，故受之以《谦》。有大而能谦，必豫，故受之以《豫》。豫必有随，故受之以《随》。以喜随人者必有事，故受之以《蛊》。《蛊》者，事也。有事而后可大，故受之以《临》。《临》者，大也。物大然后可观，故受之以《观》。可观而后有所合，故受之以《噬嗑》。嗑者，合也。物不可苟合而已，故受之以《贲》。《贲》者，饰也。致饰然后亨则尽矣，故受之以《剥》。《剥》者，剥也。物不可以终尽，剥，穷上反下，故受之以《复》。复则不妄矣，故受之以《无妄》。有无妄然后可畜，故受之以《大畜》。物畜然后可养，故受之以《颐》。《颐》者，养也。不养则不可动，故受之以《大过》。物不可以终过，故受之以《坎》。《坎》者，陷也。陷必有所丽，故受之以《离》。《离》者，丽也。
                """)
            }.padding()
        }
    }
}
// Segment 2 View
struct SegmentTwo: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(
                """
                有天地，然后有万物；有万物，然后有男女；有男女，然后有夫妇；有夫妇，然后有父子；有父子，然后有君臣；有君臣，然后有上下；有上下，然后礼义有所错。夫妇之道，不可以不久也，故受之以《恒》。《恒》者，久也。物不可以久居其所，故受之以《遁》。《遁》者，退也。物不可以终遁，故受之以《大壮》。物不可以终壮，故受之以《晋》。《晋》者，进也。晋必有所伤，故受之以《明夷》。夷者，伤也。伤于外者必反其家，故受之以《家人》。家道穷必乖，故受之以《睽》。《睽》者，乖也。乖必有难，故受之以《蹇》。《蹇》者，难也。物不可以终难，故受之以《解》。《解》者，缓也。缓必有所失，故受之以《损》。损而不已必益，故受之以《益》。益而不已必决，故受之以《夬》。《夬》者，决也。决必有所遇，故受之以《姤》。《姤》者，遇也。物相遇而后聚，故受之以《萃》。《萃》者，聚也。聚而上者谓之升，故受之以《升》。升而不已必困，故受之以《困》。困乎上者必反下，故受之以《井》。井道不可不革，故受之以《革》。革物者莫若鼎，故受之以《鼎》。主器者莫若长子，故受之以《震》。《震》者，动也。物不可以终动，止之，故受之以《艮》。《艮》者，止也。物不可以终止，故受之以《渐》。《渐》者，进也。进必有所归，故受之以《归妹》。得其所归者必大，故受之以《丰》。《丰》者，大也。穷大者必失其所居，故受之以《旅》。旅而无所容，故受之以《巽》。《巽》者，入也。入而后说之，故受之以《兑》。《兑》者，说也。说而后散之，故受之以《涣》。《涣》者，离也。物不可以终离，故受之以《节》。节而信之，故受之以《中孚》。有信者必行之，故受之以《小过》。有过物者必济，故受之以《既济》。物不可穷也，故受之以《未济》终焉。
                """)
            }.padding()
        }
    }
}

struct XuGuaZhuanView_Previews: PreviewProvider {
    static var previews: some View {
        XuGuaZhuanView()
    }
}
