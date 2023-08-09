//
//  ZaGuaZhuanView.swift
//  prewords
//
//  Created by Damon Wu on 9/8/2023.
//

import SwiftUI

struct ZaGuaZhuanView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
            Text("杂卦传").font(.largeTitle).padding(.bottom, 24)
            Text("""
    《乾》刚《坤》柔，《比》乐《师》忧。《临》、《观》之义，或与或求。《屯》见而不失其居，《蒙》杂而著。《震》，起也。《艮》，止也。《损》、《益》盛衰之始也。《大畜》时也。 《无妄》灾也。《萃》聚而《升》不来也。《谦》轻而《豫》怠也。《噬嗑》食也，《贲》无色也。《兑》见而《巽》伏也。《随》无故也，《蛊》则饬也。《剥》烂也，《复》反也。《晋》昼也。《明夷》诛也。《井》通而《困》相遇也。《咸》速也。《恒》久也。《涣》离也。《节》止也。《解》缓也。《蹇》难也。《睽》外也。《家人》内也。《否》、《泰》反其类也。《大壮》则止，《遁》则退也。《大有》众也。《同人》亲也。《革》去故也。《鼎》取新也。《小过》过也。《中孚》信也。《丰》多故也。亲寡《旅》也。《离》上而《坎》下也。《小畜》寡也。《履》不处也。《需》不进也。《讼》不亲也。《大过》颠也。《姤》遇也，柔遇刚也，《渐》女归待男行也。《颐》养正也。《既济》定也。《归妹》女之终也。《未济》男之穷也。《夬》决也，刚决柔也，君子道长，小人道忧也。
    """)
        }
        }.padding().modifier(AccentColorModifier(isDarkMode: isDarkMode))
    }
}

struct ZaGuaZhuanView_Previews: PreviewProvider {
    static var previews: some View {
        ZaGuaZhuanView()
    }
}
