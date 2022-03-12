//
//  MyButtonStyle.swift
//  Inf_Basic_2
//
//  Created by Chuljin Hwang on 2022/02/01.
//

import SwiftUI

struct MyButtonStyle: View {
    var body: some View {
        Button {
            print("sys")
        } label: {
            HStack{
                Image(systemName: "pencil")
                    .font(.largeTitle)
                Text("Edit")
                    .font(.largeTitle)
            }
        }
        .buttonStyle(MyButton())
        
    }
}
struct MyButton: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
            configuration.label
            .foregroundColor(.gray)
            .padding()
            .background(LinearGradient(gradient: Gradient(colors:[Color.white, Color.blue]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(20)
            .scaleEffect(configuration.isPressed ? 0.8 : 1)
            
        }
    }


struct MyButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        MyButtonStyle()
    }
}
