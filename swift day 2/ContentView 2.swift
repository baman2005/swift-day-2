//
//  ContentView.swift
//  swift day 2
//
//  Created by applelab03 on 1/27/26.
//

import SwiftUI

struct ContentView2: View {
    var body: some View {
       
        ZStack{
            LinearGradient(colors: [.red.opacity(0.5),.black.opacity(0.2)], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack{
                
                ZStack{
                   
                    Text("Netflix")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                        .bold()
                }
                
                ScrollView(.vertical){
                   ForEach(0..<10, id: \.self){index in
                       Text("category")
                           .bold()
                           .padding(EdgeInsets(top: 0, leading: -180, bottom: 0, trailing: 0))
                        ScrollView(.horizontal){
                        HStack{
                            ForEach(0..<10, id: \.self){index in
                                VStack{
                                        Image("airpods")
                                            .resizable()
                                            .frame(width: 80, height: 80)
                                            .scaledToFit()
                                        VStack(alignment: .leading){
                                            Text("Airpods pro")
                                                .bold()
                                            Text("$199")
                                        }
                                    }
                                   
                            }.padding(.horizontal)
                            }
                        }
                        
                    }
                    .ignoresSafeArea()
                }
            }
        }
        
    }
}
    #Preview {
        ContentView2()
    }


