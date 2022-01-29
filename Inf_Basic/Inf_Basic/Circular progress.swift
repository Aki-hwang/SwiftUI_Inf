//
//  Circular progress.swift
//  Inf_Basic
//
//  Created by Chuljin Hwang on 2022/01/29.
//

import SwiftUI

struct Circular_progress: View {
    @State private var progress: CGFloat = 0
    var body: some View {
      
        Circular_progress_Bar(progress: $progress)
    }
}

struct Circular_progress_Bar: View {
    @Binding var progress: CGFloat
    var body: some View{
        VStack{
            Slider(value: $progress)
            ZStack{
                Circle()
                    .stroke(.gray.opacity(0.3), lineWidth: 20)
                Circle()
                    .trim(from: 0.0, to: progress)
                    .stroke(style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .round))
                    .fill(progress == 1 ? Color.green : Color.red)
                    .rotationEffect(.degrees(-90))
                    .animation(.easeInOut)
                Text("\(String(format: "%.2f", (progress*100)))" + "%")
                    .font(.largeTitle)
                    .foregroundColor(progress == 1 ? Color.green : Color.red)
            }
            .padding(30)
        }
    }
    
    
}


struct Circular_progress_Previews: PreviewProvider {
    static var previews: some View {
        Circular_progress()
    }
}
