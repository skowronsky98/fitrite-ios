import Foundation

struct BrandList {
    
    var brands: [Brand] = Array()
    
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
