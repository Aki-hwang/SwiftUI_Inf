//
//  Myslider.swift
//  Inf_Basic_2
//
//  Created by Chuljin Hwang on 2022/02/01.
//

import SwiftUI

struct Myslider: View {
    
    
  @State private  var progressValue:Float = 0
    
    //클로우즈 범위
    var sliderRange: ClosedRange<Float>{ //슬라이더의 범위 초기 값을 보기 위해 진행
        return 0...100
    }
    
    var body: some View {
        VStack {
            Slider(value: $progressValue, in: 0...50)
            Text("\(Int(progressValue))")
            Slider(value: $progressValue, in: sliderRange) //슬라이더 벨류와 범위만 정해져
            HStack{
                Image(systemName: "minus")
                    .onTapGesture { //탭 제스춰를 통해 값을 변경 시켜준다
                        self.progressValue -= 1
                    }
                Slider(value: $progressValue, in: sliderRange)
                    .accentColor(.red) //슬라이더 바 값을 변경 시키기 우해
                Image(systemName: "plus")
                    .onTapGesture {
                        self.progressValue += 1
                    }
                
            }
            Text("\(Int(progressValue))")
            .padding(20)
        }
     
    }
}

struct Myslider_Previews: PreviewProvider {
    static var previews: some View {
        Myslider()
    }
}
