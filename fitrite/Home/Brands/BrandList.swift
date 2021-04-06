import Foundation

struct BrandList {
    
    var brands = [Brand]()
    
    
        
    static var Brands = [Brand] (arrayLiteral: Brand(id: "1", name: "Nike", media: Media(imageUrl: "", smallImageUrl: "nike", thumbUrl: "")),
                                 Brand(id: "2", name: "Adidas", media: Media(imageUrl: "", smallImageUrl: "adidas", thumbUrl: "")),
                                 Brand(id: "3", name: "Jordan", media: Media(imageUrl: "", smallImageUrl: "jordan", thumbUrl: "")))
    
    init(_ brands : [Brand]) {
        self.brands.append(contentsOf: brands)

    }
    
    mutating func fetchBrands(_ brands: [Brand]){
        self.brands = brands
    }
    
    init(){
    }
    
  

}


struct Brand: Codable, Identifiable{
    let id: String
    let name: String
    let media: Media
    
    enum CodingKeys: String, CodingKey {
        case id = "idBrand"
        case name
        case media
    }
}

//typealias Welcome = [Brand]




