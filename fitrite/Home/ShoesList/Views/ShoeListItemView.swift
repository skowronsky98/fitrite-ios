import SwiftUI
import SDWebImageSwiftUI

struct ShoeListItemView: View {
    var shoe : Shoe

    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .foregroundColor(.white)
                .shadow(radius: 5)
               
                
            HStack{
                WebImage(url: URL(string: "\(shoe.media.imageUrl)"))
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                
                VStack(alignment: .leading) {
                    Text("\(shoe.model)")
                        .font(.headline)
                        .bold()
                        .padding(.bottom,1)
                        
                    Text("\(shoe.brand.name)")
                        .font(.subheadline)
                    
                    Spacer()
                }.padding()
                .foregroundColor(.black)
                 
                Spacer()
            
              
                        
            }
            

        }
        .fixedSize(horizontal: false, vertical: true)
        .padding(.vertical,4)
    }
}
struct ShoeListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ShoeListItemView(shoe: ShoesList.Shoes[0])
    }
}
