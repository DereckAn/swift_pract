//
//  DetailsView.swift
//  anotherapp
//
//  Created by Dereck Ángeles on 2/3/24.
//

import SwiftUI

struct DetailsView: View {
    
    var framework: Framework
    @Binding var isShowing: Bool
    @State private var isShowingSafari = false
    var body: some View {
        
        VStack{
            XdismisButton(isShowing: $isShowing)
            
            Spacer()
            TitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            AFButon(text:"Learn More", action: {
                isShowingSafari = true
            })
            
        }.fullScreenCover(isPresented: $isShowingSafari, content: {
            SafariView(url: URL(string: framework.url) ?? URL(string: "https://portafolio-2023-iota.vercel.app/")!)
        })
    }
}
    
    #Preview {
        DetailsView(framework: MockData.sampleFramework, isShowing: .constant(false))
    }

