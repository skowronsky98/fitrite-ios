import Foundation

class ShoesListManager : ObservableObject {
    @Published private var shoesListModel : ShoesList
    
    private var chosenBrand:Brand?
    
    
    init() {
        shoesListModel = ShoesList(shoes: ShoesList.Shoes)
    }
    
    init(brand: Brand) {
        chosenBrand = brand
        
        shoesListModel = ShoesList(shoes: ShoesList.Shoes)
        
    }
    
    
    
    var shoes : [Shoe] {
        shoesListModel.shoes.filter { $0.brand.id == chosenBrand?.id}
    }
    
    
}
