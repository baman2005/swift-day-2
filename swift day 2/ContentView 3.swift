//
//  ContentView.swift
//  swift day 2
//
//  Created by applelab03 on 1/27/26.
//

import SwiftUI

var movielist = ["1", "2", "3", "4", "5", "6", "7", "10","12"]
var categorylist = ["Action", "comedy", "Drama", "Thrillers"]
        
struct ContentView3: View {
    var body: some View {
        TabView{
            VStack{
            HomeHeaderleft
            HomeContentScroll
        }
        .tabItem{
            Image(systemName: "house")
            Text("Home")
        }
            
            
        .ignoresSafeArea()
        .background(Color.black)
            VStack{
               
               HomeHeaderleft
               HomeContentScroll2
           }
            .tabItem{
                Image(systemName: "play")
                Text("Movies")
            }
               
           .ignoresSafeArea()
           .background(Color.black)
        }
        .tint(Color.red)
    }
            
}





var HomeHeaderleft: some View{
    ZStack{
        Color.black
            .frame( height: 100)
        Image("logo")
            .resizable()
            .scaledToFit()
        
            .frame(width: 100, height: 80)
        
            .bold()
            .offset(x: -150, y: 0)
        Image(systemName: "person.circle")
            .foregroundColor(.white)
            .font(.largeTitle)
            .offset(x: 100, y: 0)
        Image(systemName: "line.horizontal.3")
            .foregroundColor(.white)
            .font(.largeTitle)
            .offset(x: 140, y: 0)
    }
}


var HomeContentScroll: some View{
    ScrollView(.vertical){
        
        
        ForEach(categorylist, id: \.self) { cate in
            VStack (alignment: .leading) {
              
                Text("\(cate)")
                .foregroundColor(Color.white)
                .bold()
                .padding(.horizontal)
                ScrollView(.horizontal){
                    HStack{
                        
                        ForEach(movielist, id: \.self){ index in
                            
                            VStack{
                                
                                VStack{
                                    Image("\(index)")
                                    
                                        .resizable()
                                        .frame(width: 150, height: 150)
                                        .scaledToFit()
                                    
                                    
                                }
                                
                            }
                            Spacer()       }
                    }
                    
                    .padding(.horizontal)
                }
            }
        }
    }
}
var HomeContentScroll2: some View{
    ScrollView(.vertical){
        
        
        ForEach(categorylist, id: \.self) { cate in
            VStack (alignment: .leading) {
              
                Text("\(cate)")
                .foregroundColor(Color.white)
                .bold()
                .padding(.horizontal)
                ScrollView(.horizontal){
                    HStack{
                        
                        ForEach(movielist, id: \.self){ index in
                            
                            VStack{
                                
                                VStack{
                                    Image("\(index)")
                                    
                                        .resizable()
                                        .frame(width: 150, height: 150)
                                        .scaledToFit()
                                    
                                    
                                }
                                
                            }
                            Spacer()       }
                    }
                    
                    .padding(.horizontal)
                }
            }
        }
    }
}


    #Preview {
        ContentView3()
    }

