//
//  TermsOfServiceView.swift
//  prewords
//
//  Created by Damon Wu on 30/7/2023.
//

import SwiftUI

func getFormattedDate() -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
    return dateFormatter.string(from: Date())
}

struct TermsOfServiceView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("周易数字卦 - 服务条款").font(.title).bold().padding(.vertical)
                
                Text("欢迎使用周易数字卦应用程序！在开始使用我们的服务之前，请仔细阅读以下条款。通过访问或使用我们的应用程序，即表示您同意并遵守以下服务条款。如果您不同意这些条款，请不要使用我们的应用程序。")
                
                termsOne
                termsTwo
                termsThree
                termsFour
                termsFive
                termsSix
                
                Text("请在使用我们的应用程序之前仔细阅读并理解以上服务条款。如果您对这些条款有任何疑问，请随时联系我们。感谢您的支持和使用！").padding(.bottom, 36)

                VStack(alignment: .trailing) {
                    Text("""
                        日期：\(getFormattedDate())
                            
                        [大蒙工作室]
                        """)
                }
            }.padding(.horizontal)
        }
    }
    
    @ViewBuilder
    var termsOne: some View {
        VStack(alignment: .leading) {
            Text("服务使用条款").font(.title3).bold().padding(.vertical)
            
            (Text("1.1 - ") + Text("您必须年满法定成年年龄，并具有签署和履行本服务条款的法定权利和能力。如果您是未成年人，请在法定监护人的陪同下使用我们的应用程序。")).multilineTextAlignment(.leading).padding(.bottom)
            (Text("1.2 - ") + Text("您同意不会将我们的应用程序用于非法、欺诈、诽谤、骚扰、侵权、侵犯隐私、破坏、滥用或其他不道德的目的。")).multilineTextAlignment(.leading).padding(.bottom)
            (Text("1.3 - ") + Text("您同意不会以任何方式干扰或破坏我们的应用程序的正常运行，包括但不限于使用恶意软件、病毒或其他破坏性技术。")).multilineTextAlignment(.leading).padding(.bottom)
        }
    }
    
    @ViewBuilder
    var termsTwo: some View {
        VStack(alignment: .leading) {
            Text("知识产权").font(.title3).bold().padding(.bottom)
            
            Text(
            """
            2.1 -  我们的应用程序及其相关内容（包括但不限于图标、标志、图形、文字、图像、音频和视频片段）是我们或我们的许可方的财产，受版权和其他知识产权法律保护。未经我们书面授权，您不得复制、修改、传播、公开展示或出售我们应用程序的任何部分。
            
            2.2 -  您在我们的应用程序中提交的内容将归您所有。然而，您同意授予我们免费、永久性的、不可撤销的许可，以使用、复制、修改、发布、传播和展示您的内容，以支持我们的应用程序服务和促进应用程序的功能。
            """)
        }
    }
    
    @ViewBuilder
    var termsThree: some View {
        Text("""
        \(Text("隐私政策").font(.title3).bold())
            
        3.1 -  我们的隐私政策说明了我们收集、使用和共享您的个人信息的方式。请在使用我们的应用程序之前阅读和理解我们的隐私政策。
        """).padding(.vertical)
    }
    
    @ViewBuilder
    var termsFour: some View {
        VStack(alignment: .leading) {
            Text("免责声明").font(.title3).bold().padding(.bottom)
            
            Text("4.1 -  您同意使用我们的应用程序风险自负。我们的应用程序提供的所有内容和服务均按现状提供，不作任何明示或暗示的保证。").padding(.bottom)
            
            Text("4.2 -  我们不对应用程序的操作、可用性、准确性、及时性、完整性或其他方面作出任何保证。我们不对因使用或无法使用我们的应用程序造成的任何损害或损失负责。").padding(.bottom)
        }
    }
    
    @ViewBuilder
    var termsFive: some View {
        Text("终止和修订").font(.title3).bold().padding(.bottom)
        
        Text("5.1 - 我们保留根据自己的判断，随时终止、中止或修改我们的应用程序或服务，无论是部分还是全部，而无需事先通知您。").padding(.bottom)
        
        Text("5.2 - 我们保留在任何时候修改或更改本服务条款的权利。修改后的条款将在我们的应用程序上发布，并自发布之日起生效。您继续使用我们的应用程序将被视为接受修改后的条款。").padding(.bottom)
    }
    
    @ViewBuilder
    var termsSix: some View {
        let points = """
        6.1 - 本服务条款将受本国法律管辖，不考虑其冲突法规定。
        
        6.2 - 如因本服务条款引起任何争议，双方应首先尽力友好协商解决。如协商不成，争议应提交有管辖权的法院解决。
        """

        Text("适用法律").font(.title3).bold().padding(.bottom)

        Text(points)
    }
}

struct TermsOfServiceView_Previews: PreviewProvider {
    static var previews: some View {
        TermsOfServiceView()
    }
}
