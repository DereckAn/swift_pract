//
//  FrameworkTitleView.swift
//  anotherapp
//
//  Created by Dereck Ángeles on 2/13/24.
//

import SwiftUI

struct TitleView: View {
    let framework: Framework
    
    var body: some View{
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }.padding()
    }
    
    
}

#Preview {
    TitleView(framework: MockData.sampleFramework)
}
