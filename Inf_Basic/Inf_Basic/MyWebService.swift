//
//  MyWebService.swift
//  Inf_Basic
//
//  Created by Chuljin Hwang on 2022/01/29.
//

import Foundation
import SwiftUI

//"userId": 1,
//    "id": 1,
//    "title": "delectus aut autem",
//    "completed": false

struct Todo: Codable, Identifiable{ //디코드 하기 위해서 Codable 프로토콜을 만족한다고 표시
    var userId : Int? //서버에서 데이터가 없을수도 있으니 옵셔널로 구현
    var id : Int?
    var title : String?
    var Competed : Bool?
}

class Webservice{
    //https://jsonplaceholder.typicode.com/todos/ //Todo가 많은 어레이니까 이렇게 표시 일반적인 클로저래
    func getTodos(completion: @escaping ([Todo]) -> Void ){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos/1") else {
            return //guard "url을 가져오면 그냥 쓰고 없으면 리턴하겠다는 가드렛 문법"
        }
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            guard let hasData = data else{
                return
            }
            let todos = try! JSONDecoder().decode([Todo].self, from: hasData)
            completion(todos)
        }.resume()
    }
}
