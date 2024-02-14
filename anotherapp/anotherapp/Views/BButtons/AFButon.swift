//
//  AFButon.swift
//  anotherapp
//
//  Created by Dereck Ángeles on 2/3/24.
//

import SwiftUI

struct AFButon: View {
    var text: String
    var action: () -> Void
    
     var body: some View {
        Button(action: action) {
            Text(text)
        }
        .font(.title2)
        .fontWeight(.semibold)
        .frame(width: 280, height: 50)
        .background(Color.red)
        .foregroundColor(.white)
        .cornerRadius(10)
    }
}

//#Preview {
//    AFButon()
//}
