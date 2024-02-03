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
    var body: some View {
        
        VStack{
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
            
            Spacer()
            TitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            AFButon(text:"Learn More", action: {
                print("Learn More")
            })
        }
    }
}
    
    #Preview {
        DetailsView(framework: MockData.sampleFramework, isShowing: .constant(false))
    }

