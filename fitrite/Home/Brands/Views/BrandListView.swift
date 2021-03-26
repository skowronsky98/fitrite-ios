import SwiftUI

struct BrandListView: View {
    
   
    @ObservedObject var brandListManager : BrandListManager
    @Binding var addNewShoe: Bool
    
    var body: some View{
        
        List{
            ForEach(brandListManager.brandList){ brand in
                
                ZStack {
                    BrandItemView(brand: brand)
                    
                    NavigationLink(
                        destination: ShoesListView(shoeListManager: ShoesListManager(brand: brand), addNewShoe: $addNewShoe)){
                        EmptyView()
                    }
                }
            }
        }.navigationBarTitle("Brands")
        
        
    }
}

struct BrandListView_Previews: PreviewProvider {
    static var previews: some View {
        BrandListView(brandListManager: BrandListManager(), addNewShoe: .constant(true))
    }
}
