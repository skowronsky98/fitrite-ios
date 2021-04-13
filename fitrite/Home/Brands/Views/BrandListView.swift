import SwiftUI

struct BrandListView: View {
    
   
    @ObservedObject var brandListManager : BrandListManager
    @ObservedObject private var shoeListManager = ShoesListManager()
    var myShoe : MyShoe? = nil
        
    var body: some View{
        
        List{
            
//            ZStack {
//                
//                BrandItemView(brand: Brand(id: "", name: "All", media: Media(imageUrl: "infinity", smallImageUrl: "", thumbUrl: "")))
//                              
//                NavigationLink(
//                    destination: ShoesListView(shoeListManager: ShoesListManager(), myShoe: myShoe)){
//                    EmptyView()
//                }
//            }
                    
            ForEach(brandListManager.brandList){ brand in
                
                ZStack {
                    BrandItemView(brand: brand)
                    NavigationLink(
                        destination: ShoesListView(shoeListManager: shoeListManager, myShoe: myShoe)){
//                        shoeListManager.setChosenBrand(brand: brand)
                        EmptyView()
                    }
                }
            }
        }.navigationBarTitle("Brands")
        .onAppear(){
            shoeListManager.fetchShoes(brands: brandListManager.brandList)
//            APIController().loadShoesAPI()
        }
        
        
    }
    
}

struct BrandListView_Previews: PreviewProvider {
    static var previews: some View {
        BrandListView(brandListManager: BrandListManager())
    }
}
