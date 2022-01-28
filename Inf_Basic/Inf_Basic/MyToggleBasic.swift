//
//  MyToggleBasic.swift
//  Inf_Basic
//
//  Created by Chuljin Hwang on 2022/01/28.
//

import SwiftUI
struct CustomedToggle: ToggleStyle{
    func makeBody(configuration: Configuration) -> some View {
        //Design
        RoundedRectangle(cornerRadius: 100)//토클의 곡률을 결정
            .foregroundColor(configuration.isOn ? .orange : .blue)//도형의채우기 색깔 결정
            .overlay{
                GeometryReader(content: { geo in
                    //가장 왼쪽의 포지션
                    ZStack {
                        Circle()
                            .foregroundColor(.white)
                            .frame(width: geo.size.height)
                            
                        Text(configuration.isOn ? "Off" : "On")
                        
                    }
                            .offset(x:configuration.isOn ?
                                    geo.frame(in: .local).minX :
                                    geo.frame(in: .local).maxX -
                                    geo.size.height)
                            .animation(.easeInOut(duration: 0.3))
                            .shadow(color: .gray, radius: 3, x: 1, y: 1)
                })
            }
            .clipShape(Capsule()) //안쪽만 그림자를 남기기 위해
            
            .onTapGesture {
                configuration.isOn.toggle()
            }
    }
}


struct MyToggleBasic: View {
    @State private var toggleState: Bool = false
    var body: some View {
        VStack {//토글의 움직임이 부자연스러우면 애니메이션 추가
            Toggle("My customed Toggle", isOn: $toggleState.animation())
                .toggleStyle(CustomedToggle())
                .frame(width: 200, height: 50)
            
            Toggle("My Toggle", isOn: $toggleState.animation())
           //     .frame(width: 300, height: 50)
                .padding(.horizontal, 10)
           
            Toggle("\(toggleState.description)", isOn: $toggleState.animation())
                .padding(.horizontal, 10)
              //  .frame(width: 300, height: 50)
        }
        
    }
}

struct MyToggleBasic_Previews: PreviewProvider {
    static var previews: some View {
        MyToggleBasic()
    }
}
