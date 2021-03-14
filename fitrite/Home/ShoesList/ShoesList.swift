import Foundation

struct ShoesList {
    static var shoes = [Shoe](
        arrayLiteral: Shoe(id: "1", model: "Air Force 1", brand: BrandList.brands[0], image: "shoe"),
        Shoe(id: "2", model: "Trainer", brand: BrandList.brands[0], image: "shoe"),
        Shoe(id: "3", model: "Flyknit Racer", brand: BrandList.brands[0], image: "shoe"),
        Shoe(id: "4", model: "Yeezy Boost V2 Bred", brand: BrandList.brands[1], image: "shoe"),
        Shoe(id: "5", model: "Ultraboost 1.0", brand: BrandList.brands[1], image: "shoe"),
        Shoe(id: "6", model: "NMD", brand: BrandList.brands[1], image: "shoe")
    )
}

struct Shoe : Codable, Identifiable{
    var id : String
    var model : String
    var brand : Brand
    var image : String
}
