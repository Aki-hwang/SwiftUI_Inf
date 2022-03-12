//
//  MyGeoreader.swift
//  Inf_Basic_2
//
//  Created by Chuljin Hwang on 2022/02/01.
//

import SwiftUI

struct MyGeoreader: View {
    var body: some View {
        
        GeometryReader{ proxy in
            VStack{
            Rectangle()
                .foregroundColor(.blue)
                .frame(height: proxy.size.height / 3)
            Rectangle()
                .foregroundColor(.red)
            Rectangle()
                .foregroundColor(.orange)
            }
            
        }.frame(height: 300)
       
        
//        HStack {
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            GeometryReader{ proxy in
//                VStack{
//                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                    Text("\(proxy.size.width)")
//                    Text("\(proxy.frame(in: .global).minX)")
//                }  .frame(width: proxy.size.width, height: proxy.size.height)
//
//            }
//        }
//
//
    }
}

struct MyGeoreader_Previews: PreviewProvider {
    static var previews: some View {
        MyGeoreader()
    }
}
