//
//  Mywebview2.swift
//  Inf_Basic
//
//  Created by Chuljin Hwang on 2022/01/27.
//

import Foundation
import WebKit
import SwiftUI

struct Mywebview_under: UIViewRepresentable{
    var url : String //기본적으로 초기값을 안주면 content view에서 강제로 넣어야해
    func makeUIView(context: Context) -> some UIView {
        let url = URL(string: self.url)
        let request = URLRequest(url:url!)
        let wkweb = WKWebView()
        wkweb.load(request)
        return wkweb
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
}

//이미 만들어진 uiviewcontroller를 가져오려면
//
