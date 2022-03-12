//
//  MyAlignment.swift
//  Inf_Basic_2
//
//  Created by Chuljin Hwang on 2022/02/01.
//

import SwiftUI

struct MyAlignment: View {
    @State private var width:CGFloat=60
    @State private var height:CGFloat=60
    
    var body: some View {
        VStack(alignment: .myAlignment) {
            HStack{
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: width, height: height)
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(width: width, height: height)
                
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: width, height: height)
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: width, height: height)
                
            }
            Rectangle()
                .foregroundColor(.black)
                .frame(width: width, height: 20)
            
        }
    }
}
//나만의 정렬만들기

extension HorizontalAlignment{
    enum MyAlign: AlignmentID{
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.leading]
        }
    }
    static let myAlignment = HorizontalAlignment(MyAlign.self)
    
}
struct MyAlignment_Previews: PreviewProvider {
    static var previews: some View {
        MyAlignment()
    }
}
