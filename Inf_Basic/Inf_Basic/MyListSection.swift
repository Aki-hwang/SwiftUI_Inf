//
//  MyListSection.swift
//  Inf_Basic
//
//  Created by Chuljin Hwang on 2022/01/27.
//

import SwiftUI
//List section
//1. 기본구조
//2. 데이터 가공하는 법

struct Animal: Identifiable{
    let id = UUID()
    let name : String
    let index : Int
}

struct MyListSection: View {
    var animalList = [
    Animal(name: "dog", index: 1),
    Animal(name: "dog", index: 2),
    Animal(name: "dog", index: 3),
    Animal(name: "cat", index: 6),
    Animal(name: "cat", index: 7),
    Animal(name: "cat", index: 8),
    Animal(name: "bird", index: 9),
    Animal(name: "dog", index: 4),
    Animal(name: "cat", index: 5)
    ]
    //지금은 순서대로 출력된다
    //딕셔너리로 묶으면 같은 아이 끼리 가능//키는 그에 맞는 스트링이고
    var animalGroup:[String : [Animal]]{ //$0은 animallist에 직접 접근
       //sorting 하는 방법 (지금은 그대로 들어가 있어
     var groupData =  Dictionary(grouping: animalList) {$0.name} //이건 클로저 문법이래
        for(key, value) in groupData{
            groupData[key] = value.sorted(by:{$0.index < $1.index})//sort를 해서 자겨오겠다.
        }     //  < 걱쇠는 내림차순으로
        return groupData //여러줄이면 리턴이 요구대
    }
    //그룹키를 가져오는 내용
    var groupKey: [String]{
        animalGroup.map({$0.key }) //키만 즉 dog이름만 가져오겠다.
    }
    var body: some View {
        List{
                ForEach(groupKey, id: \.self){ k in
                    Section(header: Text("\(k)")){
                        ForEach(animalGroup[k]!){ a in
                            HStack{
                                Text("\(a.name)")
                                Text("\(a.index)")
                            }
                    }
                }
            }
            
        }
    }
}

struct MyListSection_Previews: PreviewProvider {
    static var previews: some View {
        MyListSection()
    }
}
