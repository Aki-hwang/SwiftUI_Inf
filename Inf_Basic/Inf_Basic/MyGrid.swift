//
//  MyGrid.swift
//  Inf_Basic
//
//  Created by Chuljin Hwang on 2022/01/27.
//

import SwiftUI

struct MyGrid: View {
    var columns: [GridItem]{
       [
        GridItem(.fixed(100))
     
       ]
        // [GridItem(.fixed(100))] 100이라는 크기를 계속 쓰겠다
    }
    var body: some View {
        ScrollView(.vertical){
            LazyVGrid(columns: columns, content: {
                Text("hi hello world")
                Image(systemName: "music.mic")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(systemName: "music.note")
                    .resizable()
                    .aspectRatio(contentMode: .fit)//사이즈를 가로세로 맞춘다
                Image(systemName: "music.mic")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(systemName: "music.note")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(systemName: "music.note")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(systemName: "music.note")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(systemName: "music.note")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(systemName: "music.note")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
            })
         
        }
       
    }
}

struct MyGrid_Previews: PreviewProvider {
    static var previews: some View {
        MyGrid()
    }
}
