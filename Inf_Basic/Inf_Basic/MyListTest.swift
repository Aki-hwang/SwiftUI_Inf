//
//  MyListTest.swift
//  Inf_Basic
//
//  Created by Chuljin Hwang on 2022/01/26.
//

import SwiftUI
//Model
//정리 --> hashable 과 id: \.self가 필요
//Identifiable과  var id = UUID() 있으면 다 필요 없어
struct LocationInfo : Hashable,Identifiable {
    var id = UUID() //이렇게 하면 id가 필요 없이 쓸수 있어
    var city = ""
    var weather = ""
    
}

struct MyListTest: View {
    @State private var locations=[
        LocationInfo(city: "Seoul", weather: "Sunny"),
        LocationInfo(city: "Busan", weather: "Cloudy"),
        LocationInfo(city: "LA", weather: "Rainy")
    ]
    var body: some View {
        List{ //\.self 어레이에 있는 하나하나를 자체로 보겠다 그렇다면 Hashable을
        //준수해야해 그래서 위에 구조체에 Hashable를 추가해야해
            ForEach(locations, id: \.self){ l in
                HStack{
                    Text("\(l.city)")
                    Text("\(l.weather)")
                }
            }
            ForEach(locations){ c in
                HStack{
                    Text("\(c.city)")
                    Text("\(c.weather)")
                }
            }
            ForEach(0..<locations.count){ d in
                HStack{
                    Text("\(d+1)")
                    Text("\(locations[d].city)")
                    Text("\(locations[d].weather)")
                }
            }
        }
}
}

struct MyListTest_Previews: PreviewProvider {
    static var previews: some View {
        MyListTest()
    }
}
