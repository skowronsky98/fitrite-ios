import Foundation

struct ShoesList {
    
    static var Shoes = [Shoe] (arrayLiteral: Shoe(id: "1", model: "Air Force 1", brand: BrandList.Brands[0], image: "shoe"),
                               Shoe(id: "2", model: "Trainer", brand: BrandList.Brands[0], image: "shoe"),
                               Shoe(id: "3", model: "Flyknit Racer", brand: BrandList.Brands[0], image: "shoe"),
                               Shoe(id: "4", model: "Yeezy Boost V2 Bred",brand: BrandList.Brands[1], image: "shoe"),
                               Shoe(id: "5", model: "Ultraboost 1.0", brand: BrandList.Brands[1], image: "shoe"),
                               Shoe(id: "6", model: "NMD", brand: BrandList.Brands[1], image: "shoe"))
    
    var shoes : [Shoe] = Array()
    
    init() {}
    
    init(shoes : [Shoe]) {
        self.shoes = shoes
    }
}

struct Shoe : Codable, Identifiable{
    var id : String
    var model : String
    var brand : Brand
    var image : String
}
