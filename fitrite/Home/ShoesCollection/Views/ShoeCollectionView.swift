import SwiftUI

struct ShoeCollectionView: View {
    
    @EnvironmentObject private var shoeCollectionManager : ShoesCollectionManager
    @State var isAddNewShoeLinkActive = false
    
    var body: some View {
        
        NavigationView{
            List{
                ForEach(shoeCollectionManager.shoesCollection){ shoe in
                    ZStack {
                        
                        ShoeCollectionItem(myShoe: shoe)
                        
                        NavigationLink(
                            destination: BrandListView(brandListManager: BrandListManager())){
                            
                            EmptyView()
                        }
                        
                    }
                    
                }.onDelete(perform: { indexSet in
                    for index in indexSet {
                        shoeCollectionManager.remove(shoe: shoeCollectionManager.shoesCollection[index])
                    }
                })
            }
            .listStyle(PlainListStyle())
            .navigationBarTitle("Collection")
            .navigationBarItems(trailing:
                                    NavigationLink(destination: BrandListView(brandListManager: BrandListManager()), isActive : $isAddNewShoeLinkActive){
                                        Button(action: {
                                            
                                            self.isAddNewShoeLinkActive = true
                                        }) {
                                            Image(systemName: "plus.app")
                                                .font(.largeTitle)
                                            
                                        }
                                    }
                                
            )
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ShoeCollectionView().environmentObject(ShoesCollectionManager())
    }
}
