import SwiftUI

struct frameworkGrid: View {
    
    @ObservedObject var viewModel: FrameworkGridViewModel
    var body: some View {
        
        LazyVGrid(columns: viewModel.coumns) {
            ForEach(MockData.frameworks){ framework in
                TitleView(framework: framework)
                .onTapGesture {
                    viewModel.selectedFramework = framework
                }
            }
            
        }
    }
}

// Preview
//struct frameworkGrid_Previews: PreviewProvider {
//    static var previews: some View {
//        frameworkGrid(viewModel: .constant(FrameworkGridViewModel()))
//    }
//}
