//
//  IChingIntroView.swift
//  prewords
//
//  Created by Damon Wu on 29/7/2023.
//

import SwiftUI

struct IChingIntroView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("周易概述").font(.title).padding(.vertical)
                
                Text("《周易》即为《易经》，《三易》之一，传说是周文王姬昌所作，内容包括《经》和《传》两个部分 。《经》主要是 64 卦和 384 爻，卦和爻各有说明（卦辞与爻辞），作为占卜之用。《周易》没有提出阴阳与太极等概念，讲阴阳与太极的是被道家与阴阳家所影响的《易传》。《传》包含解释卦辞和爻辞的七种文辞共十篇，统称《十翼》，相传为孔子所撰。《十翼》，亦称为《易传》，是包括〈彖传〉、〈象传〉、〈系辞传〉、〈说卦传〉、〈序卦传〉、〈杂卦传〉及〈文言传〉等文篇，因〈彖辞〉、〈象辞〉、〈系辞〉各分上下两篇，所以统共为十篇，旧称《十翼》。传是对经的解释。").padding(.vertical, 4)

                Text("《易经》的核心内容是六十四卦和爻辞、象辞。它通过六爻（阴爻和阳爻的组合）的排列组成六十四个卦象。每个卦象都由两个三爻组成，上爻和下爻分别代表阴爻和阳爻，形成一个三位二进制数。这些卦象都是用来描绘宇宙万物和自然变化的状态。").padding(.vertical, 4)
                
                Text("易经通过解读卦象，探讨自然、人生、伦理、政治、宇宙等方面的哲学问题。它强调\"道\"的思想，认为宇宙万物都遵循一种宏观的自然规律，人应该顺应这种规律而行，以达到与自然和谐共生的状态。易经也是一种卜筮和预测的方法，被广泛用于古代君主的决策、政治、战争等方面。").padding(.vertical, 4)
                
                Text("在中国传统文化中，易经被视为智慧和启示的源泉，被广泛应用于哲学、文学、历法、农业等各个领域。它不仅对古代中国产生了深远的影响，而且在现代仍然有着重要的地位，被许多人用于探索自然和人生的奥秘。").padding(.vertical, 4)
            }.padding()
        }
    }
}

struct IChingIntroView_Previews: PreviewProvider {
    static var previews: some View {
        IChingIntroView()
    }
}
