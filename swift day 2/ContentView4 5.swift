import SwiftUI
struct reelpage: View {
    var body: some View {
        Rectangle()
            .scaledToFill()
            .frame(height: 0)
//            .edgesIgnoringSafeArea(.all)
          ScrollView{
             ForEach(0..<10, id:\.self){ ing in
                 ZStack{
                       Image("2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: .infinity, height: .infinity)
                        .frame(minHeight: 850)
                        .frame(maxHeight: 1485)
                        .clipped()
                       HStack{
                         Image(systemName: "plus")
                               .foregroundStyle(Color.white)
                           Spacer()
                           Text("Reels \(Image(systemName: "chevron.down"))")
                               .foregroundStyle(Color.white)
                           Text("Friends")
                               .foregroundStyle(Color.white)
                           ZStack(alignment: .topLeading){
                               Image("2")
                                   .resizable()
                                   .cornerRadius(20)
                                   .frame(width: 20, height: 20)
                                   .overlay(Circle() .stroke(Color.black, lineWidth: 2))
                               
                               Image("3")
                                   .resizable()
                                   .cornerRadius(20)
                                   .frame(width: 20, height: 20)
                                   .overlay(Circle() .stroke(Color.black, lineWidth: 1))
                                   .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                               Image("4")
                                   .resizable()
                                   .cornerRadius(20)
                                   .frame(width: 20, height: 20)
                                   .overlay(Circle() .stroke(Color.black, lineWidth: 1))
                                   .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                               
                           }.scaleEffect(x: -1, y: 1)
                           Spacer()
                       }.padding(EdgeInsets(top: -400, leading: 0, bottom: 0, trailing: 0))
                  VStack{
//                          Spacer()
                           HStack{
                            ZStack{
                                
                                HStack{
                                      Image("2")
                                        .resizable()
                                        .frame(width: 35, height: 35)
                                        .clipShape(Circle())
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 100)
                                                .inset(by: -2)
                                                .stroke(.red, lineWidth: 3))
                                    VStack{
                                        
                                        HStack{
                                            
                                            Text("Kaptanbamaniya")
                                             .foregroundStyle(Color.white)
                                             .bold()
                                        
                                            ZStack{
                                                Rectangle()
                                                    .background(Color.white)
                                                    .opacity(0.10)
                                                    .cornerRadius(10)
                                                Text("Follow")
                                                    .font(.system(size:13, weight: .medium))
                                                    .foregroundColor(.white)
                                            }.frame(width: 70, height: 25)
                                        }
                                        Text("\(Image(systemName: "music.note"))savan chaudary,og sandhun")
                                            .font(.system(size:14, weight: .medium))
                                            .foregroundStyle(Color.white)
                                    }
                                }.padding(EdgeInsets(top: 500, leading: 0, bottom: 0, trailing: 0))
                            
                                VStack{
                                        Text("   Jai baba ki 🦁.....")
                                        .foregroundStyle(Color.white)
                                    
                                }.padding(EdgeInsets(top: 600, leading: 0, bottom: 0, trailing: 120))
                                }
                                Spacer()
                               VStack{
                                   Image(systemName: "heart")
                                       .resizable()
                                       .frame(width: 20, height: 20)
                                       .foregroundColor(.white)
                                   Text("\(ing)")
                                       .foregroundStyle(Color.white)
                                   
                                   Image(systemName: "message")
                                       .resizable()
                                       .frame(width: 20, height: 20)
                                       .foregroundColor(.white)
                                   Text("\(ing)")
                                       .foregroundStyle(Color.white)
                                   
                                   Image(systemName: "repeat")
                                       .resizable()
                                       .frame(width: 20, height: 20)
                                       .foregroundColor(.white)
                                   Text("mix")
                                       .foregroundStyle(Color.white)
                                   
                                   
                                   Image(systemName: "paperplane")
                                       .resizable()
                                       .frame(width: 20, height: 20)
                                       .foregroundColor(.white)
                                   Text("share")
                                       .foregroundStyle(Color.white)
                                   
                                   Image(systemName: "ellipsis")
                                       .resizable()
                                       .frame(width: 20, height: 10)
                                       .foregroundColor(.white)
                                   Text("\(ing)")
                                       .foregroundStyle(Color.white)
                               }.padding(EdgeInsets(top: 300, leading: 0, bottom: 50, trailing: 5))
                           }
                       }.padding(EdgeInsets(top: 0, leading: 0, bottom: 50, trailing: 5))
                   }
                }.background(Color.black)
               .listRowSeparator(.hidden)
               .listRowInsets(EdgeInsets())
               .padding(EdgeInsets(top: -15, leading: 0, bottom: 0, trailing: 0))
            }
        }
    }
#Preview {
    reelpage()
}

