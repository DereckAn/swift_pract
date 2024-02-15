//
//  AppGridView.swift
//  anotherapp
//
//  Created by Dereck Ángeles on 2/1/24.
//

import SwiftUI

struct AppGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    var body: some View {
        NavigationView{
            ScrollView{
//                frameworkGrid(viewModel: viewModel)
                frameworkList(viewModel: viewModel)
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


