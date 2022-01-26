//
//  MyToggleTest.swift
//  Inf_Basic
//
//  Created by Chuljin Hwang on 2022/01/26.
//

import SwiftUI

struct MyToggleTest: View {
    @State private var isOn = false
    var body: some View {
        //토글은 반드시 바인딩해야해
        VStack {
            MyToggle(isOn: $isOn)
            Text("\(isOn.description)")
        }
    }
}

struct MyToggle: View{
    @Binding  var isOn : Bool //바인딩은 값을 가질수 없어 원본 값이 어딘가에 있으니까
    var body: some View{
        Toggle("Toggle title \(isOn.description)", isOn: $isOn)
        Toggle(isOn: $isOn, label: {
            VStack{
                Text("Label")
                Text("Label")
            }
        })
    }
    
}

struct MyToggleTest_Previews: PreviewProvider {
    static var previews: some View {
        MyToggleTest()
    }
}
