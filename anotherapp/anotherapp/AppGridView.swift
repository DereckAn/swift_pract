//
//  AppGridView.swift
//  anotherapp
//
//  Created by Dereck Ángeles on 2/1/24.
//

import SwiftUI

struct AppGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let coumns: [GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())]
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: coumns) {
                    ForEach(MockData.frameworks){ framework in
                        TitleView(framework: framework)
                        .onTapGesture {
                            viewModel.selectedFramework = framework
                        }
                    }
                    
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowing){
                DetailsView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowing: $viewModel.isShowing)
            }
        }
        
    }
}

#Preview {
    AppGridView()
}

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
