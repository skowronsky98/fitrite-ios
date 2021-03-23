import Foundation

struct BrandList {
    
    var brands: [Brand] = Array()
    
    static var Brands = [Brand] (arrayLiteral: Brand(id: "1", name: "Nike", image: "nike"),
                                 Brand(id: "2", name: "Adidas", image: "adidas"),
                                 Brand(id: "3", name: "Jordan", image: "jordan"))
    
    init(_ brands : [Brand]) {
        self.brands.append(contentsOf: brands)
    }
    
    init(){}
}

struct Brand: Codable, Identifiable{
    var id: String
    var name: String
    var image: String
}
