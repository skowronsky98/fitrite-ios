import Foundation

struct Shoes {
    static var shoes = [Shoe](
        arrayLiteral: Shoe(id: "1", model: "Air Force 1", brand: Brands.brands[0], image: "shoe"),
        Shoe(id: "2", model: "Trainer", brand: Brands.brands[0], image: "shoe"),
        Shoe(id: "3", model: "Flyknit Racer", brand: Brands.brands[0], image: "shoe"),
        Shoe(id: "4", model: "Yeezy Boost V2 Bred", brand: Brands.brands[1], image: "shoe"),
        Shoe(id: "5", model: "Ultraboost 1.0", brand: Brands.brands[1], image: "shoe"),
        Shoe(id: "6", model: "NMD", brand: Brands.brands[1], image: "shoe")
    )
}

struct Shoe : Identifiable{
    var id : String
    var model : String
    var brand : Brand
    var image : String
}
