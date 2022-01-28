//
//  MyState.swift
//  Inf_Basic
//
//  Created by Chuljin Hwang on 2022/01/28.
//

import SwiftUI

struct MyState: View {
    @State private var myName = "Kim"
    var body: some View {
        VStack {
            Text(myName)
                .padding()
            Button("change my name"){
                myName = "how"
                
            }
            TextField("Tf title", text: $myName )
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
        }
    }
}

struct MyState_Previews: PreviewProvider {
    static var previews: some View {
        MyState()
    }
}
