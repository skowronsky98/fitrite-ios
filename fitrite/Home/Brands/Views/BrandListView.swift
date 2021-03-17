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
                        destination: Text("Shoes search")){
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
