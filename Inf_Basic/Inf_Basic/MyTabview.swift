//
//  MyTabview.swift
//  Inf_Basic
//
//  Created by Chuljin Hwang on 2022/01/28.
//

import SwiftUI

struct MyTabview: View {
    var body: some View {
        TabView{
            First()
                .tabItem{
                    Image(systemName: "person")
                    Text("person")
                }
                .edgesIgnoringSafeArea(.top)
            Second()
                .tabItem{
                    Image(systemName: "person.fill")
                    Text("person.fill")
                }
        }
    }
}
struct First: View{
    var body: some View{
        ZStack{
            Color.orange
            Text("First")
        }
    }
}
struct Second: View{
    var body: some View{
        ZStack{
            Color.blue
            Text("Second")
        }
    }
}
struct MyTabview_Previews: PreviewProvider {
    static var previews: some View {
        MyTabview()
    }
}
