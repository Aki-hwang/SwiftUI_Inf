//
//  SF_symbols.swift
//  Inf_Basic
//
//  Created by Chuljin Hwang on 2022/01/26.
//

import SwiftUI

struct SF_symbols: View {
    var body: some View {
       Image(systemName: "signature" )
            .font(.system(size:200))
            .foregroundColor(.green)
    }
}

struct SF_symbols_Previews: PreviewProvider {
    static var previews: some View {
        SF_symbols()
    }
}
