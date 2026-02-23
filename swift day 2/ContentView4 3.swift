import SwiftUI



struct messagepage: View {
    @State private var search:String = ""
    var body: some View {
        NavigationStack{
                topheadview
                topnextview
                bottomview
        }.toolbar(.hidden)
}
    var topheadview: some View {
        HStack{
             NavigationLink{
                ContentView4()
            } label: {
                Image(systemName: "chevron.left")
                 .font(.title2)
                 .foregroundStyle(Color.black)
            }.padding(EdgeInsets(top: 0, leading: -70, bottom: 0, trailing: 0))
           Spacer()
            Spacer()
           Text ("kaptanbamaniya\(Image(systemName: "chevron.down"))")
               .bold()

           Spacer()
            Spacer()
            Spacer()
           Image(systemName: "ellipsis")
                   .resizable()
                   .frame(width: 20, height: 6)
                   .padding()
            
             Image(systemName: "square.and.pencil")
                   .resizable()
                   .bold()
                   .frame(width: 15, height: 20)
        } .padding(EdgeInsets(top: -20, leading: 80, bottom: 0, trailing: 10))
    }
    var topnextview: some View {
        TextField("\(Image(systemName: "magnifyingglass")) search or ask meta ai ", text: $search)
            .frame(height: 13)
            .padding()
            .background(Color(.blue).opacity(0.1))
            .cornerRadius(58)
    }
    var scrollview: some View {
        ScrollView(.horizontal, showsIndicators: false){
            ZStack{
                HStack{
                    ForEach(movielist, id: \.self){index in
                        
                        ZStack{
                            Image("\(index)")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .foregroundStyle(Color.black)
                                .cornerRadius(50)
                            
                            Image(systemName: "bubble.left.fill")
                                .resizable()
                                .frame(width: 70, height: 60)
                                .scaledToFit()
                                .foregroundColor(Color.white)
                                .clipped()
                                .shadow(color: Color.black.opacity(0.3), radius: 10)
                                .offset(x: 10, y: -30)
                               
                            Text("TRY SHARING A SONG...")
                                .font(.system(size: 10, weight: .light, design: .default))
                                .foregroundColor(Color.gray)
                                .frame(width: 60)
                                .offset(x: 10, y: -30)
                       }
                    }
                }
                .padding(EdgeInsets(top: -10, leading: -20, bottom: 0, trailing: 0))
            }
            .padding(.horizontal,20)
            .padding(.top,25)
         }.listRowSeparator(.hidden)
        .ignoresSafeArea()
        .padding(EdgeInsets(top: -50, leading: 0, bottom: 0, trailing: 0))
    }
    var primaryview: some View {
        HStack(spacing: 20){
            ZStack{
                    Rectangle()
                        .background(Color.blue)
                        .opacity(0.05)
                        .cornerRadius(50)
                    Image(systemName: "chevron.down")
                    
                        .font(.system(size:13, weight: .medium))

                }.frame(width: 60, height: 30)
                ZStack{
                    Rectangle()
                        .background(Color.blue)
                        .opacity(0.05)
                        .cornerRadius(50)
                    Text("Primary")
                        .font(.system(size:13, weight: .medium))

                }.frame(width: 70, height: 30)
                ZStack{
                    Rectangle()
                        .frame(width: 70, height: 30)
                        .background(Color.blue)
                        .opacity(0.05)
                        .cornerRadius(50)
                    Text("Requests")
                        .font(.system(size:15, weight: .regular))
                  }
            ZStack{
                Rectangle()
                    .frame(width: 70, height: 30)
                    .background(Color.blue)
                    .opacity(0.05)
                    .cornerRadius(50)
                Text("General")
                    .font(.system(size:15, weight: .regular))
              }
        }.padding(EdgeInsets(top: -20, leading: -8, bottom: 0, trailing: 0))
        
    }
    var bottomview: some View {
        
        List{
            Spacer()
            
            scrollview
            primaryview
            
            ForEach(profilelist, id: \.self){img in
                NavigationLink{
                    insidemessagepage()
                } label: {
                    HStack(spacing:10){
                     
                            Image("\(img)")
                                .resizable()
                                .frame(width: 70, height: 70)
                                .foregroundStyle(Color.black)
                                .cornerRadius(50)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 100)
                                        .inset(by: -2)
                                        .stroke(.red, lineWidth: 3))
                } .padding(EdgeInsets(top: 0, leading:10, bottom: 0, trailing: 0))
                    VStack{
                        Text("Kaptanbamaniya")
                            .bold()
                        Text("How are you?")
                            .font(.system(size: 14))
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 40))
                    }

                    Spacer()
                    Image(systemName: "camera")
                }.navigationLinkIndicatorVisibility(.hidden)
            }.listRowSeparator(.hidden)
            .padding(EdgeInsets(top: -20, leading: -10, bottom: 10, trailing: 10))
        }.listStyle(.plain)
        .listRowSeparator(.hidden)
        .ignoresSafeArea()
    }
  
}
#Preview {
    messagepage()
}

