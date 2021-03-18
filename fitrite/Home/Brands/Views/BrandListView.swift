import SwiftUI

struct BrandListView: View {
    
    @EnvironmentObject private var shoeCollectionManager : ShoesCollectionManager
    @ObservedObject var brandListManager : BrandListManager
    
    var body: some View{
        
        List{
            ForEach(brandListManager.brandList){ brand in
                
                ZStack {
                    BrandItemView(brand: brand)
                    
                    NavigationLink(
                        destination: ShoesListView(shoeListManager: ShoesListManager(brands: brandListManager.brandList))){
                        EmptyView()
                    }
                }
            }
        }.navigationBarTitle("Brands")
        
        
    }
}

struct BrandListView_Previews: PreviewProvider {
    static var previews: some View {
        BrandListView(brandListManager: BrandListManager())
    }
}
