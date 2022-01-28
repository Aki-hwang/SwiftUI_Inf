//
//  Myscrollview.swift
//  Inf_Basic
//
//  Created by Chuljin Hwang on 2022/01/28.
//

import SwiftUI

struct Myscrollview: View {
    @State private var proxy : ScrollViewProxy?
    var body: some View {
        VStack{
            Button("Scroll Button") {
                proxy?.scrollTo(20)
            }
            ScrollView{
                ScrollViewReader{ proxy in
                    
                    ForEach(0..<49){ index in
                        Text("\(index)")
                            .padding()
                    }// 데이터 만들고 한번 호출
                    .onAppear(perform: {
                        self.proxy = proxy
                        
                    })
                }
               
            }
        }
    }
}

struct Myscrollview_Previews: PreviewProvider {
    static var previews: some View {
        Myscrollview()
    }
}
