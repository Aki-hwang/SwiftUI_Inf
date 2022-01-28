//
//  MyTextEditor.swift
//  Inf_Basic
//
//  Created by Chuljin Hwang on 2022/01/28.
//

import SwiftUI

struct MyTextEditor: View {
    @State private var inputText = ""
    var body: some View {
        VStack {
            TextEditor(text: $inputText)
                .padding() //safe area가 잡혀지도록 설정
                .lineSpacing(40)
                .font(.title)
                .disableAutocorrection(false)// 자동완성 막기
                .onChange(of: inputText, perform: { value in // 값을 계속 보고 글자수 넘으면 멈춰
                  if inputText.count > 100{
                      inputText.removeLast()
                    }
            })
            HStack {
                Spacer()
                Text("\(inputText.count)" + "/100")
            }
        }
    }
}

struct MyTextEditor_Previews: PreviewProvider {
    static var previews: some View {
        MyTextEditor()
    }
}
