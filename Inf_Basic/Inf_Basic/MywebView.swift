//
//  MywebView.swift
//  Inf_Basic
//
//  Created by Chuljin Hwang on 2022/01/27.
//

import SwiftUI

struct MywebView: View {
    var body: some View {
        Mywebview_under(url: "https://apple.com")
    }
}
//web view는 바로 사용할수 있는건 아직 없어
//uikit에 있는 걸 바로 가져가 쓰는거야
struct MywebView_Previews: PreviewProvider {
    static var previews: some View {
        MywebView()
    }
}
