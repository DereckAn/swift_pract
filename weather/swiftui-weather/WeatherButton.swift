//
//  WeatherButton.swift
//  swiftui-weather
//
//  Created by Dereck Ángeles on 1/28/24.
//

import SwiftUI


struct WeatherChangerButton: View {
    var texto:String
    @Binding var isNight: Bool
    var body: some View {
        Button(texto) {
            print("Tapped")
            isNight.toggle()
        }
        .frame(width: 280, height: 50)
        .background(Color.gray.gradient)
        .cornerRadius( 10)
        .font(.system(size: 20, weight: .semibold))
    }
}

//struct previewButton: PreviewProvider{
//    @Binding var isNight: Bool
//    static var previews: some View{
//        WeatherChangerButton(texto: "hola", isNight: $isNight)
//    }
//}
