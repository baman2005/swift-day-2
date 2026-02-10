import SwiftUI

struct magnifyingpage: View {
    var column10 = [
        GridItem(.flexible(minimum: 50, maximum: .infinity),spacing: 1),
        GridItem(.flexible(minimum: 50, maximum: .infinity),spacing: 1),
        GridItem(.flexible(minimum: 50, maximum: .infinity),spacing: 1)]
    
    var body: some View {
        Rectangle()
                 .fill(Color.white)
                 .frame(height: 10)
        VStack(alignment: .leading){
          ScrollView{
                ZStack{
                    Rectangle()
                        .background(Color.blue)
                        .opacity(0.05)
                        .cornerRadius(10)
                        .frame(width: 380, height: 30)
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                         Text("Search with Meta AI ")
                            .foregroundColor(.gray)
                    }.cornerRadius(30)
                        .ignoresSafeArea()
                        .padding(EdgeInsets(top: 5, leading: -180, bottom: 0, trailing: 0))
                    }
                
                LazyVGrid(columns: column10, spacing: 2){
                    ForEach(movielist, id: \.self) { img in
                        ZStack{
                            Image("\(img)")
                                .resizable()
                                .frame(minHeight: 200)
                                .frame(maxHeight: .infinity)
                                .aspectRatio(1/1.5, contentMode: .fill)
                                .clipped()
                        }
                       
                    }
                }
            }
        }
    }
    
}
#Preview {
  magnifyingpage()
}

