//
//  MyPlaceholder.swift
//  Inf_Basic
//
//  Created by Chuljin Hwang on 2022/01/27.
//

import SwiftUI

struct MyPlaceholder: View {
    @State private var myString = "hello world"
    @State private var showPlaceholder = false
    var body: some View {
        VStack{
            VStack {
                Image(systemName: "person")
                   
                    .font(.system(size:100))
                    .clipShape(Circle())
                    .overlay(Circle().stroke())
                //오버레이에는 플레이스 홀더가 적용 안댐
                Text(myString)
                    .padding()
                //3항 연산자 변수가 트루면 ? 뒤 실행 아니면 : 실행
                // .init()하면 초기화 된다
            }
                    .redacted(reason: showPlaceholder ? .placeholder : .init())
                Button("Click me"){
                    showPlaceholder.toggle()
            }
        }
 
    }
}

struct MyPlaceholder_Previews: PreviewProvider {
    static var previews: some View {
        MyPlaceholder()
    }
}
