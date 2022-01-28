//
//  Inf_BasicApp.swift
//  Inf_Basic
//
//  Created by Chuljin Hwang on 2022/01/26.
//

import SwiftUI

@main
struct Inf_BasicApp: App {
    var body: some Scene {
        WindowGroup {
            MyEnvironmentView().environmentObject(Myinfo2())
        
        }
    }
}
