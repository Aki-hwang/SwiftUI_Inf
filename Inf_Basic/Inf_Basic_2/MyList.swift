//
//  MyList.swift
//  Inf_Basic_2
//
//  Created by Chuljin Hwang on 2022/02/01.
//

import SwiftUI

struct MyList: View {
    @State private var user = ["kim", "soo", "min"]
    var body: some View {
        NavigationView{
            List{
                ForEach(user, id :\.self){name in
                    Text(name)
                }
                .onDelete{indexSet in //delete 버튼을 만들기 위해 명령
                    if  let findIndex = indexSet.first{
                        //누루는 순간 indexSet에서 가져와
                        user.remove(at:findIndex) //실제로 지울수 있어
                    }// 리무브를 해서 데이터를 지우면 하화면이 갱신이 된다. 그래서
                    // 반드시 @State 키워드가 있어야해
                }
                .onMove { (idxSet, desctinationInt) in
                    self.user.move(fromOffsets: idxSet, toOffset: desctinationInt)}
            }
            .navigationBarItems(leading: EditButton())
            .navigationBarItems(trailing: Button(action: {
                self.user.append("New name")
            }, label: {
                Image(systemName: "plus")
            }))
            .navigationBarTitle("Navigation")
        }
       
    }
}

struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
