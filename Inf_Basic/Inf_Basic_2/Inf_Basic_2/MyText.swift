//
//  MyText.swift
//  Inf_Basic_2
//
//  Created by Chuljin Hwang on 2022/02/01.
//

import SwiftUI

struct MyText: View {
    @State private var isSelected = false
    var buttonColor: Color{
        if isSelected{
            return .red
        }else {
            return .blue
        }
    }
    
    var body: some View {
        VStack{
//            if self.isSelected{
//                Text("abc")
//                    .foregroundColor(.red)
//            }else{
//                Text("abc")
//                    .foregroundColor(.blue)
//            }
//
            Text("abc")
                .foregroundColor(buttonColor)
            
            Text("abc")
                .foregroundColor(self.isSelected ? .red : .blue)
            
            Button(action: {
                
            }, label: {
                Text("abc")
            })
            
        }
     
      
    }
}

struct MyText_Previews: PreviewProvider {
    static var previews: some View {
        MyText()
    }
}
