import SwiftUI

struct BrandListView: View {
    
   
    @ObservedObject var brandListManager : BrandListManager
    
    var body: some View{
        
        List{
            ForEach(brandListManager.brandList){ brand in
                
                ZStack {
                    BrandItemView(brand: brand)
                    
                    NavigationLink(
                        destination: ShoesListView(shoeListManager: ShoesListManager(brand: brand))){
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
