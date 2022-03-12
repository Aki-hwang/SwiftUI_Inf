//
//  MyState.swift
//  Inf_Basic_2
//
//  Created by Chuljin Hwang on 2022/02/01.
//

import SwiftUI

//클래서 -->ObservedObject
//클래스를 위해 ObservableObject
//그후 모델들은 반드시 @Published 사용
    
class Myprofile: ObservableObject {
    @Published var name :String = "aki"
    @Published var age :Int = 32
    func changeText(){
       name = "min"
       age = 11
    }
    
}
struct MyState: View {
    //관찰을 하겠다는 선언 필요
    @ObservedObject var profile = Myprofile() //클래스를 선언했으니
    // 인스턴트를 만드는 초기화 과정이 반드시 필요
    
    var body: some View {
        VStack {
            Text(profile.name)
            Text("\(profile.age)") //age가 인트라서 괄호 필요
            Button {
                profile.changeText()
            } label: {
                Text("Click me")
            }

        }
    }
}

struct MyState_Previews: PreviewProvider {
    static var previews: some View {
        MyState()
    }
}
