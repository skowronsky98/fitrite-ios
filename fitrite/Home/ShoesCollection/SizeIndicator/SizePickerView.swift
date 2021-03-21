import SwiftUI

struct SizePickerView: View {
    var myShoe : MyShoe
    
    @State var isButtonActive = false
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
                .padding(2)
            
            Text("\(myShoe.shoe.brand.name)")
                .font(.headline)
               
            
            SizeChartView(sizeChartManager: SizeChartManager()).padding()
            
            NavigationLink(destination: ShoeCollectionView(), isActive : $isButtonActive){
                Button(action: {
                    
                    self.isButtonActive = true
                }) {
                    Text("Add to Collection")
                }
            }
 
            Spacer()
           
        }
       
    }
}
struct AddShoeView_Previews: PreviewProvider {
    static var previews: some View {
        SizePickerView(myShoe: ShoesCollection.Shoes[0], addShoeManager: SizePickerManager())
    }
}

