//
//  Shape.swift
//  Inf_Basic
//
//  Created by Chuljin Hwang on 2022/01/26.
//

import SwiftUI

struct Shape: View {
    var body: some View {
        VStack {
            
            Rectangle()
      //        .fill(Color.red)
                .stroke(Color.orange,style:StrokeStyle(lineWidth:10,lineCap: .round, dash: [20,10]))
                
            Spacer()
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.red)
            Circle()
                .fill(Color.blue)
            Capsule()//원의 호형태를 유지하면서 구성
                .fill(Color.blue)

            Ellipse() //타원형태로 구성
                .fill(Color.green)
            
        }
        .frame(width: 300, height: 400)
        
    }
}

struct Shape_Previews: PreviewProvider {
    static var previews: some View {
        Shape()
    }
}
