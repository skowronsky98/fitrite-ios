import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject private var shoeCollectionVM : ShoesCollectionManager
    
    var body: some View {
        
        NavigationView{
            List{
                ForEach(shoeCollectionVM.shoesCollection){ shoe in
                    ShoeCollectionItem(myShoe: shoe)
                    }.onDelete(perform: { indexSet in
                        for index in indexSet {
                            shoeCollectionVM.remove(shoe: shoeCollectionVM.shoesCollection[index])
                        }
                    })
            }.navigationBarTitle("Collection")
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ShoesCollectionManager())
    }
}
