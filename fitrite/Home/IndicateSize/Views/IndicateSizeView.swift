import SwiftUI

struct SwiftUIView: View {
    var myShoe : MyShoe
    
    var body: some View {
        VStack {
            Image("\(myShoe.shoe.image)")
                .resizable()
                .scaledToFit()
                .fixedSize(horizontal: false, vertical: true)
            
            
            Text("\(myShoe.shoe.model)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.semibold)
            
            Spacer()
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(myShoe: ShoesCollection.Shoes[0])
    }
}

