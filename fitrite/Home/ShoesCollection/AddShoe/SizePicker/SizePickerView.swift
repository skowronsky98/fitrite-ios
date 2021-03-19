import SwiftUI

struct SizePickerView: View {
    var myShoe : MyShoe
    
    @ObservedObject var addShoeManager : SizePickerManager
    
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
struct AddShoeView_Previews: PreviewProvider {
    static var previews: some View {
        SizePickerView(myShoe: ShoesCollection.Shoes[0], addShoeManager: SizePickerManager())
    }
}

