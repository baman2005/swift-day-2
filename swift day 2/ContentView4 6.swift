import SwiftUI
var storyimage = ["1"]

struct storypage: View {
    @State var isliked: Bool = false
    @State var likecount: Int = Int.random(in: 0...1000)
    var body: some View {
        NavigationStack{
            Rectangle()
                .scaledToFill()
                .frame(height: 1)
                .edgesIgnoringSafeArea(.all)
            ScrollView{
                  ForEach(storyimage, id: \.self) { index in
       
                      HStack{
                          ZStack{
                              Image("\(index)")
                                 .resizable()
                                 .scaledToFit()
                                 .frame(width: 402, height: .infinity)
                                 .frame(minHeight: 850)
                                 .frame(maxHeight: 1485)
                                 .clipped()
                                HStack{
                                    Image("\(index)")
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                        .clipShape(Circle())
                                    
                                    VStack{
                                        HStack{
                                            Text("Kaptanbamaniya")
                                                .foregroundStyle(Color.white)
                                           Spacer()
                                             Text(Image(systemName: "ellipsis"))
                                                .foregroundStyle(Color.white)
                                            NavigationLink{
                                                ContentView4()
                                            }label:{
                                                Text(Image(systemName: "xmark"))
                                                    .foregroundStyle(Color.white)
                                                    .font(Font.largeTitle)
                                            }
                                 
                                        }
                                        Text("\(Image(systemName: "music.note")) savan choudhry,og sandhu")
                                            .foregroundStyle(Color.white)
                                            .padding(EdgeInsets(top: -30, leading: -120, bottom: 0, trailing: 0))
                                    }
                                   
                                    
                                }.padding(EdgeInsets(top: -400, leading: 0, bottom: 10, trailing: 0))
                              VStack{
                                 HStack{
                                      ZStack{
                                          Rectangle()
                                              .foregroundColor(Color.white)
                                              .opacity(0.50)
                                              .cornerRadius(50)
                                          Text("send message...")
                                              .font(.system(size:13, weight: .medium))
                                              .foregroundColor(Color.white)
                                              .padding(EdgeInsets(top: 10, leading: -120, bottom: 15, trailing: 0))
                                      }.frame(width: 300, height: 0)
                                      Spacer()
                                      HStack{
                                          HStack{
                                              Button {
                                                  isliked.toggle()
                                                  likecount += isliked ? 1 : -1
                                                  
                                              } label: {
                                                  Image(systemName: isliked ? "heart.fill" : "heart")
                                                      .foregroundColor(isliked ? .red : .white)
                                                
                                              }
                                          }
                                          Image(systemName: "bubble.right")
                                              .foregroundColor(.white)
                                              .bold()
                                          Image(systemName: "paperplane")
                                              .foregroundColor(.white)
                                              .bold()
                                      }
                                  }
                                     
                              }.padding(EdgeInsets(top: 700, leading: 0, bottom: 0, trailing: 0))
                             
                            }
                      }
                    }.background(Color.black)
                    .padding(EdgeInsets(top: -30, leading: 0, bottom: 0, trailing: 0))
            }.toolbar(.hidden)
        }
        }
    }
#Preview {
    storypage()
}

