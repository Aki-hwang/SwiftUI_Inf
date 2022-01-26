//
//  MyButtonTest.swift
//  Inf_Basic
//
//  Created by Chuljin Hwang on 2022/01/26.
//

import SwiftUI
//하나의 뷰안에서 사용되는 값 --> state
struct MyButtonTest: View {
    @State private var didSelected = false
    //변수를 하나 선언해서 그 안에 리턴해 주는 값을 넣는거야
    var buttonImage: String{
        //buttonImage경우 자동갱신이 아니기 때문에 State가 필요 없어
    //즉 값이 변하는 경우만 State만 써야해
        if didSelected {
        //if didSelected == true { 동일한 표현 방식
            return "cricle"
        }else {
            return "pencle"
        }
    }
    var body: some View {
        VStack{
            Text("Current Status: \(didSelected.description)")
            Button(action: {
                didSelected.toggle()
            }, label: {
                HStack{
                    Text("hello")
                    Image(systemName: buttonImage)
                        .font(.system(size: 400 ))
                    Text("Button \(didSelected.description)")
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
                }
            })
            //didSelected는 Bool 타입이라서 스트링으로 출력을 못하지만
            //.description을 통해 가능하게 해준다
           
        }
       
    }
}
struct MyButtonTest_Previews: PreviewProvider {
    static var previews: some View {
        MyButtonTest()
    }
}
