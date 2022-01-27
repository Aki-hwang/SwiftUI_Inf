//
//  Myalertview.swift
//  Inf_Basic
//
//  Created by Chuljin Hwang on 2022/01/27.
//

import SwiftUI

struct Myalertview: View {
    @State private var isShowAlert = false
    var body: some View {
        VStack{
            Spacer()
            Button("show alert"){
                isShowAlert.toggle()
            }
            .alert(isPresented: $isShowAlert, content: {
                Alert(title: Text("Alert title"),
                      dismissButton: .cancel())
                
            })
            Spacer()
            Button("show alert2"){
                isShowAlert.toggle()
            }
            .alert(isPresented: $isShowAlert, content: {
                let primaryButton = Alert.Button.default(Text("done"))
                let secondaryButton = Alert.Button.default(Text("cancle"))
                return Alert(title:Text("show alert2"),
                             primaryButton: primaryButton,
                             secondaryButton: secondaryButton) //위 3개 중에 리턴할껄르 정해죠
                
            })
            Spacer()
            Text("isShowAlert : \(isShowAlert.description)")
            Spacer()
        }
       
    }
}

struct Myalertview_Previews: PreviewProvider {
    static var previews: some View {
        Myalertview()
    }
}
