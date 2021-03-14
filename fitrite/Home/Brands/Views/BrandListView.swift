import SwiftUI

struct BrandListView: View {
    
    @EnvironmentObject private var shoeCollectionManager : ShoesCollectionManager
    var myShoe : ShoesCollection.MyShoe
    
    var body: some View{
        
        
        
        
        List{
            ForEach(BrandList.brands){ brand in
                
                ZStack {
                    BrandItemView(brand: brand)
                    
                    NavigationLink(
                        destination: MyShoeDetailView(myShoe: myShoe)){
                        EmptyView()
                    }
                }
            }
        }.navigationBarTitle("Brands")
        
        
    }
}

struct BrandListView_Previews: PreviewProvider {
    static var previews: some View {
        BrandListView(myShoe: ShoesCollection.MyShoe(id: "1", shoe: ShoesList.shoes[0], size: 9.0))
    }
}
