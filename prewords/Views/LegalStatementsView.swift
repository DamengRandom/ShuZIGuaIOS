//
//  LegalStatementsView.swift
//  prewords
//
//  Created by Damon Wu on 11/8/2023.
//

import SwiftUI

struct LegalStatementsView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("免责声明").font(.title).bold().padding(.vertical)
                Text(
                """
                本手机应用程序（周易数字卦）仅供一般参考，并非旨在作为法律，财务或医疗建议。 在采取任何行动之前，请务必咨询合格的专业人士。

                应用程序的开发者不对因使用应用程序提供的信息而造成的任何损失或损害负责。 应用程序上的所有信息均按“原样”提供，不作任何明示或暗示的保证，包括但不限于适销性和适合特定用途的暗示保证。

                应用程序可能包含第三方网站的链接。 应用程序的开发者不对第三方网站上提供的信息或内容负责。

                应用程序的开发者保留随时更改本免责声明的权利。 您在使用应用程序时应定期查看此免责声明。

                使用应用程序即表示您同意本免责声明。
                """)
            }.padding()
        }
    }
}

struct LegalStatementsView_Previews: PreviewProvider {
    static var previews: some View {
        LegalStatementsView()
    }
}
