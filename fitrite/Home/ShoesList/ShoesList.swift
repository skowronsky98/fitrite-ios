import Foundation

struct ShoesList {
    
    
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
