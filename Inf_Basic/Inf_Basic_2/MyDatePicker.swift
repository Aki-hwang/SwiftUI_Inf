//
//  MyDatePicker.swift
//  Inf_Basic_2
//
//  Created by Chuljin Hwang on 2022/02/01.
//

import SwiftUI

struct MyDatePicker: View {
    @State var selectedDate = Date() //현재 날짜 가져와
    
    var persentDtyle : String{
        let formatter = DateFormatter() //포맷터를 변수에 대입
        formatter.dateFormat = "yyyy년 MM월 dd일 HH:mm:ss" //데이터 포맷을 정하고
      return  formatter.string(from: selectedDate) //데이터 값을 정해서 넘겨죠
    }
    var body: some View {

        
        VStack{
            
            DatePicker("날짜를 선택하세요", selection: $selectedDate, in: ...Date())
            //오늘까지만 셀렉할수 있어
                     //date피커스타일 에 .labelsHidden()을 사용하면 피커에 텍스트가 안보이게됨
                       .datePickerStyle(WheelDatePickerStyle()).labelsHidden()

            
          
        }
   

    
      
        
        
    }
}

struct MyDatePicker_Previews: PreviewProvider {
    static var previews: some View {
        MyDatePicker()
    }
}
