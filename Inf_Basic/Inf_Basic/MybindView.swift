//
//  MybindView.swift
//  Inf_Basic
//
//  Created by Chuljin Hwang on 2022/01/28.
//

import SwiftUI

struct MybindView: View {
    @State private var myBool = false
    var body: some View {
            NavigationView{
                VStack{
                NavigationLink(destination:
                    detailView(mainToggle: $myBool)
                ) {
                    Text("navigation")
                }
                Toggle(myBool.description, isOn: $myBool)
                    .padding()
            }
        }
            
    }
}

struct detailView: View{
    @Binding var mainToggle : Bool
    var body: some View{
        Toggle("Toggle", isOn: $mainToggle)
    }
   
}

struct MybindView_Previews: PreviewProvider {
    static var previews: some View {
        MybindView()
    }
}
