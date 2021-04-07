import SwiftUI

struct BrandListView: View {
    
   
    @ObservedObject var brandListManager : BrandListManager
    
    var myShoe : MyShoe? = nil
    
    var body: some View{
        
        List{
            
            ZStack {
                
                BrandItemView(brand: Brand(id: "", name: "All", media: Media(imageUrl: "infinity", smallImageUrl: "", thumbUrl: "")))
                              
                NavigationLink(
                    destination: ShoesListView(shoeListManager: ShoesListManager(), myShoe: myShoe)){
                    EmptyView()
                }
            }
                    
            ForEach(brandListManager.brandList){ brand in
                
                ZStack {
                    BrandItemView(brand: brand)
                    NavigationLink(
                        destination: ShoesListView(shoeListManager: ShoesListManager(), myShoe: myShoe)){
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
