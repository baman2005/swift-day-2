//
//  ContentView3.swift
//  swift day 2
//
//  Created by applelab03 on 1/30/26.
//


//
//  ContentView.swift
//  swift day 2
//
//  Created by applelab03 on 1/27/26.
//
import SwiftUI
struct Cardnames: Identifiable{
    var id = UUID()
    var name:String
    var category:String
    var isliked:Bool
}
var profilelist = ["1", "2", "3", "4", "5", "6", "7", "10", "12"]
struct ContentView4: View {
    @State private var card:[Cardnames] = []
    init(){
        _card = State(initialValue: newcard())
    }
    @State var likecount: Int = Int.random(in: 0...1000)
    @State var issave: Bool = false
    @State var savecount: Int = Int.random(in: 0...1000)
    @State var isshare: Bool = false
    @State var sharecount: Int = Int.random(in: 0...1000)
    var body: some View {
        NavigationStack{
            TabView{
                VStack{
                    Rectangle()
                        .fill(Color.white)
                        .frame(height: 0)
                    
                    ScrollView(.vertical,showsIndicators: false)  {
                        topsection
                        bodysection
                        feddsection
                     }
                }.ignoresSafeArea()
                    .tabItem{
                        Image(systemName: "house")
                   }
                VStack{
                    reelpage()
                }
                .tabItem{
                    Image(systemName: "play.rectangle.fill")
                }
                VStack{
                    messagepage()
                }
                .tabItem{
                Image(systemName: "paperplane")
                        }
                 VStack{
                    magnifyingpage()
                }
                .tabItem{
                Image(systemName: "magnifyingglass")
                        }
                VStack{
                    profilepage()
                }
             .tabItem{
             Image(systemName: "person.fill")
                        }
            }
        }.toolbar(.hidden)
            }
    var topsection: some View {
       ScrollView(.vertical,showsIndicators: false) {
            ZStack{
                Color.white.opacity(0.1)
                Image(systemName: "plus")
                    .font(.system(size: 20))
                    .foregroundColor(.black)
                    .offset(x: -170, y: 20)
                Spacer()
                Text("Instagram")
                    .font(.system(size: 30))
                    .foregroundColor(.black)
                    .offset(x: 6, y: 20)

                 Image(systemName: "heart")
                    .font(.system(size: 20))
                    .foregroundColor(.black)
                    .offset(x: 180, y: 20)
            }.frame(width: 400,height: 100)
        }
    }
    var bodysection: some View {
        VStack{
            ScrollView(.horizontal,showsIndicators: false){
                HStack(alignment: .top, spacing: -3){
                    ForEach(profilelist, id: \.self) { index in
                        NavigationLink{
                            storypage()
                        } label: {
                            Image("\(index)")
                                .resizable()
                                .cornerRadius(50)
                                .frame(width: 70, height: 70)
                                .scaledToFit()
                                .overlay(
                                    RoundedRectangle(cornerRadius: 100)
                                        .inset(by: -2)
                                        .stroke(.red, lineWidth: 3))
                        }
                    }.navigationBarBackButtonHidden()
                    .padding(EdgeInsets(top: 3, leading: 15, bottom: 0, trailing: 0))
                }
                Spacer()
            }
        }
    }
    var feddsection: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack(alignment: .leading,spacing: 12) {
                ForEach(card.indices, id: \.self) { img in
                    NavigationLink{
                        profilepage()
                    } label: {
                        HStack(alignment: .top){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(50)
                                .frame(width: 35, height: 35)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 100)
                                        .inset(by: -2)
                                        .stroke(.red, lineWidth: 3))
                       VStack{
                               Text("Kaptanbamaniya__001")
                               .bold()
                                      
                           VStack{
                               Text("\(Image(systemName: "music.note")) Wavy of the sea")
                               .font(.system(size: 12))
                           }.padding(EdgeInsets(top: 0, leading: -70, bottom: 0, trailing: 0))
                            }.foregroundColor(.black)
                            Spacer()
                            Image(systemName: "ellipsis")
                                .foregroundColor(.black)
                                .padding(EdgeInsets(top: 0, leading: 100, bottom: 0, trailing: 10))
                        }
                        .padding(.vertical)
                        .padding(.horizontal)
                    }
                    ZStack{
                        Image(card[img].name)
                         .resizable()
                         .scaledToFill()
                         .frame(maxHeight: 700)
                          .clipped()
                    }.padding(EdgeInsets(top: -20, leading: 0, bottom: 20, trailing: 0))
                    HStack{
                        HStack{
                            Button{
                                card[img].isliked.toggle()
                                likecount += card[img].isliked ? 1 : -1
                            }label: {
                                Image(systemName: card[img].isliked ? "heart.fill" :"heart")
                                    .foregroundStyle(Color.black)
                                Text("\(likecount)")
                                    .foregroundColor(Color.black)
                            }
                        }
                        Image(systemName: "bubble.right")
                        Text("\(Int.random(in: 0...10000))")
                        HStack{
                            Button {
                                isshare.toggle()
                                sharecount += isshare ? 1 : -1
                            } label: {
                                Image(systemName: isshare ? "paperplane.fill" : "paperplane")
                                    .foregroundColor(isshare ? .blue : .black)
                                Text("\(sharecount)")
                                    .foregroundColor(Color.black)
                            }
                        }
                        Spacer()
                        VStack{
                            Button {
                                issave.toggle()
                                savecount += issave ? 1 : -1
                                
                            } label: {
                                Image(systemName: issave ? "bookmark.fill" : "bookmark")
                                    .foregroundColor(issave ? .black : .gray)
                                Text("\(savecount)")
                                    .foregroundColor(Color.black)
                            }
                        }
                        
                    }.padding(EdgeInsets(top: -20, leading: 0, bottom: 10, trailing: 0))
                }
            }
        }
    }
    func newcard() -> [Cardnames]{
        var cards: [Cardnames] = []
        for i in movielist{
            cards.append(Cardnames(name:  "\(i)", category: "restaurantlist", isliked: false))
        }
        return cards
    }
        }
    
  #Preview {
        ContentView4()
    }
    

