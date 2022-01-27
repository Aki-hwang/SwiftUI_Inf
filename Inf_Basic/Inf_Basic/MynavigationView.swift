//
//  MynavigationView.swift
//  Inf_Basic
//
//  Created by Chuljin Hwang on 2022/01/27.
//

import SwiftUI

struct MynavigationView: View {
    //기본적으로 뷰가 만들어 질때 만들어지도록 셋팅 설정을 넣어
    init(){
        //바 색깔을 변경해줄수 있어
    //    UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor.red]
        //타이틀에 대한 설정
        let myAppearance = UINavigationBarAppearance()
        myAppearance.titleTextAttributes = [
            .foregroundColor : UIColor.blue,
            .font : UIFont.boldSystemFont(ofSize: 30),
//            .backgroundColor :UIColor.orange 글자 주위만 색변해
        ]
        myAppearance.largeTitleTextAttributes = [ //마우스 올리전에 큰 모습
            .foregroundColor : UIColor.blue,
        ]
        myAppearance.backgroundColor = .yellow //올라간 상태만 적용된다
        UINavigationBar.appearance().standardAppearance = myAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = myAppearance //위쪽 모두 적용하려고
        UINavigationBar.appearance().tintColor = .red //detail의 메뉴 색 변경
    }
    
    var body: some View {
        NavigationView{
            List {
                NavigationLink(destination: {
                    Text("detail")
                }, label: {
                    Image(systemName: "person")
                    Text("Navigate")
                })
                    
            }
            .navigationBarTitle("Navigation title", displayMode: .inline)
        }
    }
}

struct MynavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MynavigationView()
    }
}
