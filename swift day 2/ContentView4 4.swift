import SwiftUI

struct magnifyingpage: View {
    var column10 = [
        GridItem(.flexible(minimum: 50, maximum: .infinity),spacing: 1),
        GridItem(.flexible(minimum: 50, maximum: .infinity),spacing: 1),
        GridItem(.flexible(minimum: 50, maximum: .infinity),spacing: 1)]
    @State private var search:String = ""
    var body: some View {
        Rectangle()
                 .fill(Color.white)
                 .frame(height: 10)
        VStack(alignment: .leading){
          ScrollView{
              TextField("\(Image(systemName: "magnifyingglass")) search with meta ai ", text: $search)
                  .frame(height: 13)
                  .padding()
                  .background(Color(.blue).opacity(0.1))
                  .cornerRadius(58)
                
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

