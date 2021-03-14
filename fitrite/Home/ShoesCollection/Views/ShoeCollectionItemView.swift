import SwiftUI


struct ShoeCollectionItem: View {

    var myShoe : ShoesCollection.MyShoe

    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .foregroundColor(.white)
                .shadow(radius: 5)
               
                
            HStack{
                Image("\(myShoe.shoe!.image)")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                
                VStack(alignment: .leading) {
                    Text("\(myShoe.shoe!.model)")
                        .font(.headline)
                        .bold()
                        .padding(.bottom,1)
                        
                    Text("\(myShoe.shoe!.brand.name)")
                        .font(.subheadline)
                    
                    Spacer()
                }.padding()
                .foregroundColor(.black)
                 
                Spacer()
            
              
                Text("\(myShoe.size!, specifier: "%.1f")")
                    .font(.headline)
                    .bold()
                    .padding(.trailing,24)
                        
            }
            

        }
        .fixedSize(horizontal: false, vertical: true)
        .padding(.vertical,4)
    }
}

struct ShoeCollectionCell_Previews: PreviewProvider {
    static var previews: some View {
        ShoeCollectionItem(myShoe: ShoesCollection.MyShoe(id: "1", shoe: ShoesList.shoes[0], size: 9.0))
    }
}
