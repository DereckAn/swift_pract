//
//  FrameworkGridViewModel.swift
//  anotherapp
//
//  Created by Dereck Ángeles on 2/3/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject{
    var selectedFramework: Framework?{
        didSet{ isShowing = true }
    }
    @Published var isShowing = false
    let coumns: [GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())]
}
