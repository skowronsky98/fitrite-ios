import Foundation

struct ShoeDTO : Codable, Identifiable{
    var id : String
    var model : String
    var factor: Double
    var colorWay: String
    var gender: String
    var releaseDate: String
    var title: String
   

    var media: Media
    var idBrand: String
    
    enum CodingKeys: String, CodingKey {
        case id = "idShoes"
        case model = "modelName"
        case factor
        case colorWay
        case gender
        case releaseDate
        case title
        case media
        case idBrand
    }
}

func getBrandByID(idBrand: String, brands: [Brand]) -> Brand? {
    for item in brands {
        if item.id == idBrand {
            return item
        }
    }
    return nil
}

func domainShoesMapper(shoesDTO: [ShoeDTO], brands: [Brand]) -> [Shoe] {
    var shoes = [Shoe]()
    for item in shoesDTO {
        
        
        shoes.append(Shoe(id: item.id,
                          model: item.model,
                          factor: item.factor,
                          colorWay: item.colorWay,
                          gender: item.gender,
                          releaseDate: item.releaseDate,
                          title: item.title,
                          media: item.media,
                          brand: getBrandByID(idBrand: item.idBrand, brands: brands)!))
    }
    return shoes
}
