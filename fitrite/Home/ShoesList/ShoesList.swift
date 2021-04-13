import Foundation

struct ShoesList {
    
    static var Shoes = [Shoe] (arrayLiteral: Shoe(id: "1", model: "Air Force 1",factor: 0, colorWay: "basic", gender: "m", releaseDate: "2020-01-10", title: "forsy", media: Media(imageUrl: "shoe", smallImageUrl: "shoe", thumbUrl: "shoe"),brand: BrandList.Brands[0]),
                               Shoe(id: "2", model: "Air Max",factor: 0, colorWay: "basic", gender: "m", releaseDate: "2020-01-10", title: "forsy", media: Media(imageUrl: "shoe", smallImageUrl: "shoe", thumbUrl: "shoe"),brand: BrandList.Brands[0]),
                               Shoe(id: "3", model: "Ultraboost v1",factor: 0, colorWay: "basic", gender: "m", releaseDate: "2020-01-10", title: "forsy", media: Media(imageUrl: "shoe", smallImageUrl: "shoe", thumbUrl: "shoe"), brand: BrandList.Brands[0]),
                               Shoe(id: "4", model: "NMD",factor: 0, colorWay: "basic", gender: "m", releaseDate: "2020-01-10", title: "forsy", media: Media(imageUrl: "shoe", smallImageUrl: "shoe", thumbUrl: "shoe"),brand: BrandList.Brands[0]),
                               Shoe(id: "5", model: "Yeezy 350",factor: 0, colorWay: "basic", gender: "m", releaseDate: "2020-01-10", title: "forsy", media: Media(imageUrl: "shoe", smallImageUrl: "shoe", thumbUrl: "shoe"), brand: BrandList.Brands[0]),
                               Shoe(id: "6", model: "Air Jordan 1 High",factor: 0, colorWay: "basic", gender: "m", releaseDate: "2020-01-10", title: "forsy", media: Media(imageUrl: "shoe", smallImageUrl: "shoe", thumbUrl: "shoe"), brand: BrandList.Brands[0]))
    
    var shoes : [Shoe] = Array()
    
    init() {}
    
    init(shoes : [Shoe]) {
        self.shoes = shoes
    }
    
    mutating func fetchShoes(shoes: [Shoe]){
        self.shoes = shoes
    }
    
    func getShoesByBrand(brand: Brand) -> [Shoe] {
        return shoes.filter { (shoe) -> Bool in
            shoe.brand.id == brand.id
        }
    }
}

struct Shoe : Codable, Identifiable{
    var id : String
    var model : String
    var factor: Double
    var colorWay: String
    var gender: String
    var releaseDate: String
    var title: String
   
    var media: Media
    var brand: Brand
}
