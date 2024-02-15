//
//  frameworkList.swift
//  anotherapp
//
//  Created by Dereck Ángeles on 2/13/24.
//

import SwiftUI

struct frameworkList: View {
    @ObservedObject var viewModel: FrameworkGridViewModel
    var body: some View {
        List {
            ForEach(MockData.frameworks){ framework in
                NavigationLink(destination:
                                DetailsView(
                                    framework: framework, isShowing: $viewModel.isShowing)){
                                        FrameworkTitleViewRow(framework: framework)
                                    }
            }
        }
    }
}

//struct frameworkList_Previews: PreviewProvider {
//    static var previews: some View {
//        frameworkList(viewModel: FrameworkGridViewModel())
//    }
//}
