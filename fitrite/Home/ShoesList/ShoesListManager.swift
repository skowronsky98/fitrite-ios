import Foundation

class ShoesListManager : ObservableObject {
    @Published private var shoesListModel : ShoesList
    
    var chosenBrand :Brand?
    
    init() {
        shoesListModel = ShoesList()
    }
    
    init(brands : [Brand]) {
        shoesListModel = ShoesList(shoes: Array(
            arrayLiteral: Shoe(id: "1", model: "Air Force 1", brand: brands[0], image: "shoe"),
            Shoe(id: "2", model: "Trainer", brand: brands[0], image: "shoe"),
            Shoe(id: "3", model: "Flyknit Racer", brand: brands[0], image: "shoe"),
            Shoe(id: "4", model: "Yeezy Boost V2 Bred", brand: brands[1], image: "shoe"),
            Shoe(id: "5", model: "Ultraboost 1.0", brand: brands[1], image: "shoe"),
            Shoe(id: "6", model: "NMD", brand: brands[1], image: "shoe")
        ))
    }
    
    init(brands : [Brand], brand: Brand) {
        chosenBrand = brand
        
        shoesListModel = ShoesList(shoes: Array(
            arrayLiteral: Shoe(id: "1", model: "Air Force 1", brand: brands[0], image: "shoe"),
            Shoe(id: "2", model: "Trainer", brand: brands[0], image: "shoe"),
            Shoe(id: "3", model: "Flyknit Racer", brand: brands[0], image: "shoe"),
            Shoe(id: "4", model: "Yeezy Boost V2 Bred", brand: brands[1], image: "shoe"),
            Shoe(id: "5", model: "Ultraboost 1.0", brand: brands[1], image: "shoe"),
            Shoe(id: "6", model: "NMD", brand: brands[1], image: "shoe")
        ))
        
    }
    
    
    
    var shoes : [Shoe] {
        shoesListModel.shoes.filter { $0.brand.id == chosenBrand?.id}
    }
    
    
}
