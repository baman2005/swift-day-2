import SwiftUI
struct insidemessagepage: View {
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    Spacer()
                    NavigationLink{
                        messagepage()
                    } label: {
                        Image(systemName: "chevron.left")
                         .font(.title2)
                    } .foregroundStyle(Color.black)
                    
                    Image("2")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    NavigationLink{
                        profilepage()
                    }label: {
                        VStack{
                            HStack{
                                Text("Kaptanbamaniya")
                                    .font(.title2)
                                    .bold()
                                Image(systemName: "chevron.right")
                                    .font(.title2)
                                    
                            }
                            Text("Kaptanbamaniya@001")
                                .font(.title3)
                        }
                    }.foregroundColor(.black)
                    Spacer()
                    Image(systemName: "phone")
                        .font(.title2)
                    Spacer()
                    Image(systemName: "video")
                        .font(.title2)
                    Spacer()
                    Image(systemName: "tag")
                        .font(.title2)
                    Spacer()
                }
                Divider()
                    
                    Spacer()
                Text("hello world 🥰")
                    .foregroundColor(.gray)
                Spacer()
                HStack{
                    ZStack{
                        Rectangle()
                            .background(Color.blue)
                            .cornerRadius(15)
                        Image(systemName: "camera")
                            .foregroundColor(Color.white)
                    }.frame(width: 30, height: 30)
                    Image(systemName: "magnifyingglass")
                        .font(.title2)
                    Text("type a meassage...")
                      
                      Spacer()
                     Spacer()
                    Spacer()
                    Spacer()
                    ZStack{
                        Rectangle()
                            .background(Color.blue)
                            .cornerRadius(15)
                        Image(systemName: "paperplane")
                            .foregroundColor(Color.white)
                    }.frame(width: 50, height: 40)
                        .padding(4)
                }.frame(width: 390, height: 50)
                .background(Color.gray.opacity(0.2))
                    .cornerRadius(20)
                .padding()
            }
        }.toolbar(.hidden)
        }
    }
#Preview {
    insidemessagepage()
}

