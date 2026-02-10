//
//  ContentView.swift
//  swift day 2
//
//  Created by applelab03 on 1/27/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            ZStack{
                Color.blue
                    .frame( height: 140)
                Text("PROFILE")
                    .foregroundColor(.white)
                    .bold()
            }
            
            ScrollView(.vertical){
                
                
                ForEach(0..<100, id: \.self){index in
                    HStack{
                        
                        Color.gray
                        .frame(width: 80, height: 80)
                        VStack(alignment: .leading){
                            Text("Kaptan")
                                .bold()
                            Text("ios developer")
                            
                        }
                        Spacer()         }
                    
                    .padding(.horizontal)
                    
                    
                }
                .ignoresSafeArea()
            }
        }
        
    }
}
    #Preview {
        ContentView()
    }

