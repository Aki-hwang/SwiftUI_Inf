//
//  MyEnvironmentView.swift
//  Inf_Basic
//
//  Created by Chuljin Hwang on 2022/01/28.
//

import SwiftUI

//여기저시 쓰는 데이터를 만들어줄때 사용 envirnmentObject

class Myinfo2 : ObservableObject { //이 프로토콜을 준수
    @Published var myName = ""
    @Published var myUrl = "" //화면에 표시하는경우 반드시 퍼플리시 해야해
}

struct MyEnvironmentView: View {
   // @ObservedObject 각각의 뷰에서 순차적으로 넘겨줘야해
    //그래서 여기저기 쓸때는 그냥 en로
    @EnvironmentObject var myinfo2: Myinfo2
    //이렇게 타입만 지정할수 있어 괄호를 넣어서 초기화 못해
    var body: some View {
        
        NavigationView{
            VStack {
                NavigationLink(destination:{
                    DetailView()
                
                }, label: {
                    Text("navigation")
                        .font(.largeTitle)
                })
                Text("name: \(myinfo2.myName)")
                    .font(.largeTitle)
                    .padding()
                Text("url : \(myinfo2.myUrl)")
                    .font(.title)
                    .padding()
            }
        }.onAppear{
            myinfo2.myName = "kim"
            myinfo2.myUrl = "htt://naver.com"
        }
    }
}
struct DetailView: View{
    @EnvironmentObject var myinfo2: Myinfo2 //그냥 카피하면대
    var body: some View{
        VStack {
            Text("detail name: \(myinfo2.myName)")
                .font(.largeTitle)
                .padding()
            Text("detail url : \(myinfo2.myUrl)") .font(.largeTitle)
            Button("change name"){
                myinfo2.myName = "LEE"
            }
        }
    }
}

struct MyEnvironmentView_Previews: PreviewProvider {
    static var previews: some View {
        MyEnvironmentView().environmentObject(Myinfo2()) //여기서 반드시 이렇게 초기화필요 //d
    }
}
