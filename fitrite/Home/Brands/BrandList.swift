import Foundation

struct BrandList {
    static var brands = [Brand](
        arrayLiteral: Brand(id: "1", name: "Nike", image: "nike"),
        Brand(id: "2", name: "Adidas", image: "adidas"),
        Brand(id: "3", name: "Jordan", image: "nike")
    )
}

struct Brand: Codable, Identifiable{
    var id: String
    var name: String
    var image: String
}
