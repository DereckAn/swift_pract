//
//  ContentView.swift
//  swiftui-weather
//
//  Created by Dereck Ángeles on 1/23/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    
    var body: some View {
        
        ZStack{
            BackgroundColor(isNight:    isNight)
            VStack{
               CityTextView(cityText: "Cupertino, CA")
                    
                MainWeatherStatus(imageName: isNight ? "moon.haze" : "cloud.sun.bolt.fill", temperature: 76)
                
                HStack {
                    WeatherDay(dayOfWeek: "MON", imageName: "cloud.sun.bolt.fill", degrees: 50)
                    WeatherDay(dayOfWeek: "TUE", imageName: "sun.rain.fill", degrees: 69)
                    WeatherDay(dayOfWeek: "WED", imageName: "sun.max.fill", degrees: 80)
                    WeatherDay(dayOfWeek: "THU", imageName: "wind.snow", degrees: 25)
                    WeatherDay(dayOfWeek: "FRI", imageName: "cloud.sun.rain.fill", degrees: 60)
                    WeatherDay(dayOfWeek: "SAT", imageName: "cloud.sun.bolt.fill", degrees: 55)
                    
                    
                   
                }
                Spacer()
                
                WeatherChangerButton(texto: "Change Day Time", isNight: $isNight)
                Spacer()
            }
        }
    }
}

#Preview {  
    ContentView()
}

struct WeatherDay: View {
    var dayOfWeek: String
    var imageName: String
    var degrees: Int
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 20, weight: .bold))
            Image(systemName:imageName)
                .symbolRenderingMode(.palette)
                .resizable()
                .foregroundStyle(.mint, .orange, .green)
                .aspectRatio(contentMode: .fit)
                .frame(width: 50,height: 50)
            Text("\(degrees)°")
                .font(.system(size: 30, weight: .bold))
        }
    }
}

struct BackgroundColor: View {
    
    var isNight: Bool
//    var topColor: Color
//    var bottomColor: Color
    var body: some View {
        // Este es para un gradiente un poco mas detallado y complejo.
        LinearGradient(colors: [isNight ? .black : .blue, isNight ? .gray :Color("")], startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//        ContainerRelativeShape() // Este espara un gradiente mas rapdio y sencillo.
//            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
//            .ignoresSafeArea()
    }
    
    
}
// .blue, Color("")

struct CityTextView: View {
    var cityText: String
    var body: some View {
        Text(cityText)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
            
    }
}

struct MainWeatherStatus: View {
    
    
    var imageName: String
    var temperature: Int
    var body: some View {
        VStack(spacing: 10){
            Image(systemName:imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180,height: 180)
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .bold))
                .foregroundColor(.white)
        }
        .padding(.bottom,40)
    }
}


