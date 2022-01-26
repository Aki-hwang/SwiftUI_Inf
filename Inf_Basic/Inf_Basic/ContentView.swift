//
//  ContentView.swift
//  Inf_Basic
//
//  Created by Chuljin Hwang on 2022/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("1")
            .resizable()
            .scaledToFit()
            .edgesIgnoringSafeArea(.all)
            //.aspectRatio(contentMode: .fill)
        
            .mask(
                HStack{
                    VStack{
                        Circle()
                        Circle()
                        Circle()
                        Circle()
                        Circle()
                    }
                    VStack{
                        Circle()
                        Circle()
                        Circle()
                        Circle()
                        Circle()
                    }
                    VStack{
                        Circle()
                        Circle()
                        Circle()
                        Circle()
                        Circle()
                    }
                }
              )
          //  .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
