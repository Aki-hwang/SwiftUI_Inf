//
//  MynetworkJon.swift
//  Inf_Basic
//
//  Created by Chuljin Hwang on 2022/01/29.
//

import SwiftUI
//https://jsonplaceholder.typicode.com
//https://jsonplaceholder.typicode.com/todos/1

struct MynetworkJon: View {
    @State var todos = [Todo]()//이니셜하려고
//    @State private var todos : [Todo] 이거도 가능
    var body: some View {
        List(todos) { todo in
            Text(todo.title!)// 옵셔놀이니까 강제 언레핑위해 ! 사용
        }.onAppear {
            Webservice().getTodos{todos in
                self.todos = todos
            }
        }
    }
}

struct MynetworkJon_Previews: PreviewProvider {
    static var previews: some View {
        MynetworkJon()
    }
}
