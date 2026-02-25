import SwiftUI
var movielist2 = ["1", "2", "3", "4"]
var highlightlist = ["clg", "mee", "food", "manali"]
var column = [
    GridItem(.flexible(minimum: 50, maximum: .infinity),spacing: 1),
    GridItem(.flexible(minimum: 50, maximum: .infinity),spacing: 1),
    GridItem(.flexible(minimum: 50, maximum: .infinity),spacing: 1)  ]
struct profilepage: View {
    var body: some View {
        NavigationStack{
            VStack{
                ScrollView(.vertical, showsIndicators: true ){
                    topview()
                    profilepic()
                    Spacer()
                    Spacer()
                    BioSection()
                    highlightView()
                    optionView()
                    photogrid()
            }
                .padding(EdgeInsets(top: 0, leading: -7, bottom: 0, trailing: 0))
            }.padding(EdgeInsets(top: 0, leading: 7, bottom: 0, trailing: 1))
            .ignoresSafeArea()
        }
       }
    }
struct topview: View{
    var body: some View {
        ZStack{
            Color.white.frame(height: 120)
            Text ("\(Image(systemName: "lock"))kaptanbamaniya\(Image(systemName: "chevron.down"))")
                .bold()
                .foregroundStyle(Color.black)
                .padding(EdgeInsets(top: 55, leading: -7, bottom: 0, trailing: 0))
            
            HStack{
                
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .clipShape(Circle())
                    .foregroundColor(Color.black)
                    .padding(EdgeInsets(top: 55, leading: 8, bottom: 0, trailing: 0))
                Spacer()
               
                Image(systemName: "at")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding(EdgeInsets(top: 55, leading: 0, bottom: 0, trailing: 2))
                Image(systemName: "line.horizontal.3")
                    .resizable()
                    .frame(width: 20, height: 15)
                    .padding(EdgeInsets(top: 55, leading: 0, bottom: 0, trailing: 20))
                
            }
        }
    }
 
}
struct profilepic: View{
    @State private var isFollowing: Bool = false
    @State private var followerCount: Int = Int.random(in: 10...10000)
    var body: some View {
        HStack{
            Spacer()
            NavigationLink{
                storypage()
            }label: {
                ZStack{
                    Image("logo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundStyle(Color.black)
                        .cornerRadius(50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 100)
                                .inset(by: -2)
                                .stroke(.red, lineWidth: 3)
                        )
                  Image(systemName: "plus.circle.fill")
                        .resizable()
                        .background(Color.white)
                        .frame(width: 30, height: 30)
                        .cornerRadius(50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 22)
                                .stroke(Color.white, lineWidth: 2)
                        )
                        .padding(EdgeInsets(top: 60, leading: 80, bottom: 0, trailing: 0))
                    ZStack{
                        Image(systemName: "bubble.left.fill")
                            .resizable()
                            .foregroundStyle(Color.white)
                            .frame(width: 90, height: 60)
                            .shadow(color: Color.black.opacity(0.3), radius: 4, x: 0, y: 2)
                            
                        Text("whats on your mind..")
                            .font(.system(size: 12))
                            .foregroundStyle(Color.gray)
                            .frame(width: 70, alignment: .center)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 12, trailing: 0))
                    }
                    .offset(x: 20, y: -40)
                 }
            }
            VStack{
               
                Text("KAPTAN BAMANIYA")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundStyle(Color.black)
                    .padding(EdgeInsets(top: 0, leading: -90, bottom: 0.5, trailing: 0))
                HStack{
                    VStack{
                        Text("15")
                            .bold( )
                        Text("posts")
                    }
                    .padding(10)
                    VStack{
                        Text("\(followerCount)")
                            .bold( )
                        Text("followers")
                          
                   }.padding(10)
                   
                    VStack{
                        Text("900")
                            .bold( )
                        Text("following")
                     }.padding(10)
                    Spacer()
                }
                Spacer()
            }.padding(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 0))
            
        }
    }
}
struct highlightView: View{
    var body: some View {
        NavigationLink{
            storypage()
        } label: {
            ScrollView(.horizontal, showsIndicators: false){
                
                
                HStack{
                    ForEach(movielist2, id: \.self){index in
                        Image("\(index)")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .foregroundStyle(Color.black)
                        .cornerRadius(50)}

                }
                .padding(.horizontal,10)
                .padding(.top,5)
                HStack{
                    Spacer()
                    Spacer()
                    ForEach(highlightlist, id: \.self) { img in
                        Text("\(img)")
                        .frame(maxWidth: .infinity, alignment: .init(horizontal: .leading, vertical: .center))
                        .foregroundColor(.black)
                    }
                }.padding(EdgeInsets(top: 0, leading: 14, bottom: 10, trailing: 0))
            }
        }
        
    }
}

struct optionView: View{
    var body: some View {
        HStack{
            Spacer()
                  Image(systemName: "rectangle.grid.3x3.fill")
                      .resizable()
                      .frame(width: 20, height: 20)
              
              Spacer()
              Image(systemName: "play.rectangle")
                  .resizable()
                  .frame(width: 20, height: 20)
              Spacer()
              
                  Image(systemName: "repeat")
                      .resizable()
                      .frame(width: 20, height: 20)
         
              Spacer()
              Image(systemName: "person.crop.square")
                  .resizable()
                  .frame(width: 20, height: 20)
              Spacer()
          }  .padding(1)
    }
}
struct photogrid: View {
    var body: some View {
        ScrollView{
            LazyVGrid(columns: column, alignment: .leading, spacing: 1){
                ForEach(movielist.reversed(), id: \.self) { img in
                    Image("\(img)")
                        .resizable()
                        .frame( height: 200)
                }
            }
        }
    }
}
struct BioSection: View {
    var body: some View {
        VStack{
            VStack{
                HStack{
                    Text("Kaptan")
                    .bold()
                    .padding(.top,-8)
                    .padding(.horizontal,20)
                    Spacer()
                }
            }
            VStack{
                HStack{
                    Text("www.kaptanbamaniya.com")
                        .padding(.top,-12 ,)
                        .padding(.horizontal,20)
                    Spacer()
                }
            }
            VStack{
                HStack{
                    
                    Text("followed by kaptanbamaniya.inc and 100 others")
                        .font(.system(size: 14, weight: .light, design: .default))
                        .padding(.top,-12)
                        .padding(.horizontal,20)
                        .foregroundColor(Color.black.opacity(0.6))
                    
                    Spacer()
                }
            }
             HStack{
                 NavigationLink{
                     EditProfileView()
                 }label: {
                     ZStack{
                         Rectangle()
                             .background(Color.blue)
                             .opacity(0.05)
                             .cornerRadius(5)
                         Text("Edit profile")
                             .font(.system(size:13, weight: .medium))
                             .foregroundColor(Color.black)
                     }
                 }.foregroundStyle(.primary)
                ZStack{
                    Rectangle()
                        .background(Color.blue)
                        .opacity(0.05)
                        .cornerRadius(5)
                    Text("share profile")
                        .font(.system(size:13, weight: .medium))
                        .foregroundColor(Color.black)
                }
                ZStack{
                    Rectangle()
                        .frame(width: 30, height: 25)
                        .background(Color.blue)
                        .opacity(0.05)
                        .cornerRadius(5)
                    Image(systemName: "person.and.person")
                        .font(.system(size:15, weight: .regular))
                 }
                 Spacer()
             }.padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0))
        }
    }
}





#Preview {
    profilepage()
}

