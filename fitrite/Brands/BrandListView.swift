import SwiftUI

struct BrandListView: View {
    
    var myShoe : ShoesCollection.MyShoe
    
    
    
    var body: some View{
        
        
        List{
            ForEach(Brands.brands){ brand in
              
                BrandItemView(brand: brand)
                
            }.navigationBarTitle("Brands")

            
        }
    }
}

struct BrandListView_Previews: PreviewProvider {
    static var previews: some View {
        BrandListView(myShoe: ShoesCollection.MyShoe(id: "1", shoe: Shoes.shoes[0], size: 9.0))
    }
}
