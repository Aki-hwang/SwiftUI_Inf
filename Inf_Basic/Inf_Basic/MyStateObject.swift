//
//  MyStateObject.swift
//  Inf_Basic
//
//  Created by Chuljin Hwang on 2022/01/28.
//

import SwiftUI
//stateObject
class Myintro: ObservableObject{
    @Published var myScore = 0
}


struct MyStateObject: View {
    @ObservedObject var myintro = Myintro()
//    @StateObject var myintro2 = Myintro()
    var body: some View {
        VStack{
            Text("\(myintro.myScore)")
            Button("Plus1"){
                myintro.myScore += 1
            }
      
            myButton()
        }
        
    }
}
//메인 화면이 갱신되면 myButton까지 초기화 되어버린다. @ObservedObject경우
//@StateObject 경우 값이 메인이 초기화 되더라도 유지가 된다 싱기해
//갱신하는 뷰 안에서 갱신을 원하면 ob 
struct myButton: View{
    @StateObject var myintro2 = Myintro()
//    @ObservedObject var myintro2 = Myintro()
    var body: some View{
        Text("\(myintro2.myScore)")
        Button("Plus2"){
            myintro2.myScore += 1
        }
    }
}

struct MyStateObject_Previews: PreviewProvider {
    static var previews: some View {
        MyStateObject()
    }
}
