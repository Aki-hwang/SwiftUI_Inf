//
//  MyAppStoreage.swift
//  Inf_Basic
//
//  Created by Chuljin Hwang on 2022/01/28.
//

import SwiftUI
//계속 저장하고 싶은 데이터
struct MyAppStoreage: View {
    @AppStorage("mode") var aaa = false
    @AppStorage("notification count") var count = ""
    //키워드는 내가 넣을 수 있어 mode는 계속 가지고 있는 값
    
    var body: some View {
        ZStack {
            aaa ? Color.orange.opacity(0.5) :
            Color.gray.opacity(0.5)
            VStack {
                Button("Button"){
                    aaa.toggle()
                }
            }
        }
        }
}

struct MyAppStoreage_Previews: PreviewProvider {
    static var previews: some View {
        MyAppStoreage()
    }
}
