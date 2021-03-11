import SwiftUI

struct ShoeCollectionView: View {
    
    @EnvironmentObject private var shoeCollectionVM : ShoesCollectionManager
    
    var body: some View {
        
        NavigationView{
            List{
                ForEach(shoeCollectionVM.shoesCollection){ shoe in
                    ZStack {
                        
                        ShoeCollectionItem(myShoe: shoe)
                        
                        NavigationLink(
                            destination: BrandListView(myShoe: shoe)){
                            EmptyView()
                        }
                       
                    }
                    
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
        ShoeCollectionView().environmentObject(ShoesCollectionManager())
    }
}
