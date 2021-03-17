import SwiftUI

struct ShoeCell: View {
    
    var shoe : Shoe
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .foregroundColor(.white)
                .shadow(radius: 5)
                .padding(.horizontal,8)
                
            HStack{
                Image("\(shoe.image)")
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
            
              
                Text("9 US")
                    .font(.headline)
                    .bold()
                    .padding(.trailing,24)
                        
            }
            .padding(.horizontal,8)

        }
        .fixedSize(horizontal: false, vertical: true)
        .padding(.vertical,4)
    }
}

struct ShoeCell_Previews: PreviewProvider {
    static var previews: some View {
        ShoeCell(shoe: Shoe(id: "1", model: "Air Max 97", brand: Brand(id: "1", name: "Nike", image: "nike"), image: "shoe"))
    }
}
