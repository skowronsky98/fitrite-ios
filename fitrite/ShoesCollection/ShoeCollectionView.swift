import SwiftUI

struct ContentView: View {
    
    @ObservedObject var shoeCollectionVM : ShoesCollectionViewModel
    var body: some View {
        
        NavigationView{
            List{
                ForEach(shoeCollectionVM.shoesCollection){ shoe in
                        ShoeCell(shoe: shoe)
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
        ContentView(shoeCollectionVM: ShoesCollectionViewModel())
    }
}
