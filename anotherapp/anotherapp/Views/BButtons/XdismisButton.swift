//
//  XdismisButton.swift
//  anotherapp
//
//  Created by Dereck Ángeles on 2/13/24.
//

import SwiftUI

struct XdismisButton: View {
    @Binding var isShowing: Bool
    var body: some View {
        HStack{
            Spacer()
            Button{
                isShowing = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44, alignment: .topTrailing)
            }
        }.padding()
    }
}

#Preview {
    XdismisButton(isShowing: .constant(false))
}
