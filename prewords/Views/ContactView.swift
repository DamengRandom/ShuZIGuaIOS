//
//  ContactView.swift
//  prewords
//
//  Created by Damon Wu on 2/8/2023.
//

import SwiftUI

struct ContactView: View {
    @Environment(\.presentationMode)
    var presentationMode
    
    var body: some View {
        NavigationView {
            Text("Contact View").navigationTitle("保持联系 ~~").navigationBarItems(trailing: Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Label("", systemImage: "xmark").foregroundColor(.black)
            }))
        }
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
