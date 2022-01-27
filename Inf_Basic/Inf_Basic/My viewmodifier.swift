//
//  My viewmodifier.swift
//  Inf_Basic
//
//  Created by Chuljin Hwang on 2022/01/27.
//

import SwiftUI

struct My_viewmodifier: View {
    var body: some View {
        VStack {
            Text("Main Title")
                .font(.largeTitle)
                .foregroundColor(.black)
                .bold()
            Text("Sub title!")
                .modifier(MyTextStyle(myColor: .red))
                .padding(.bottom, 20)
            Text("Description")
                .font(.title2)
                .foregroundColor(.orange)
                .italic()
                .padding(.bottom, 20)
            Text("Description")
                .customFont()
        }
    }
}
struct MyTextStyle: ViewModifier{
    var myWeight = Font.Weight.regular
    var myFont = Font.title2
    var myColor = Color.black
    func body(content: Content) -> some View {
        content
        .font(myFont.weight(myWeight))
        .foregroundColor(myColor)
        .padding(.bottom, 20)
    }
}
//뷰모디파이가 안되는 설정이 있는경우 Extension을 사용
extension Text{
    func customFont() -> Text{
        self
            .font(.title2)
            .bold()
            .italic()
            .foregroundColor(.blue)
    }
}
struct My_viewmodifier_Previews: PreviewProvider {
    static var previews: some View {
        My_viewmodifier()
    }
}
