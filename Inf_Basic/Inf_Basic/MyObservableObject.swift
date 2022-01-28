//
//  MyObservableObject.swift
//  Inf_Basic
//
//  Created by Chuljin Hwang on 2022/01/28.
//

import SwiftUI
//복잡한 구조 클래스 기반 여기저기 사용시 사용함
class Myinfo: ObservableObject{
    @Published var myAge = 20
    //@Published var myName = "aki" //계속 값을 관찰
    //즉 어디서든지 변경되면 바로 갱신이 된다.
    var myName = "aki" {
        didSet{//변경된 값
            if oldValue.count == 0{
                objectWillChange.send()
            } //갯수가 0일때만 화면에 갱신이 된다는거야
    }//프로퍼티 옵져버 검색
 
        
    }
}

struct MyObservableObject: View {
    @ObservedObject var myInfo = Myinfo()//관찰하는 값가져옴
    var body: some View {
        VStack {
            Text("\(myInfo.myName)")
            Button("Change name"){
                myInfo.myName = "chuljin"
            }
        }
    }
}

struct MyObservableObject_Previews: PreviewProvider {
    static var previews: some View {
        MyObservableObject()
    }
}
