import Foundation

class ShoesCollectionManager: ObservableObject {
    
    @Published private var shoesCollectionModel : ShoesCollection
    
    
    
    var myShoeTmp : MyShoe?
    
    
    init() {
        shoesCollectionModel = ShoesCollection(
            Array(
                arrayLiteral: MyShoe(id: "1", shoe: Shoe(id: "1", model: "Air Max 97", brand: Brand(id: "1", name: "Nike", image: "nike"), image: "shoe"), size: 8.0),
                MyShoe(id: "2", shoe: Shoe(id: "2", model: "Air Force 1", brand: Brand(id: "1", name: "Nike", image: "nike"), image: "shoe"), size: 8.0),
                MyShoe(id: "3", shoe: Shoe(id: "2", model: "Air Force 1", brand: Brand(id: "1", name: "Nike", image: "nike"), image: "shoe"), size: 8.0),
                MyShoe(id: "4", shoe: Shoe(id: "3", model: "Air Force 1", brand: Brand(id: "2", name: "Adidas", image: "adidas"), image: "shoe"), size: 8.0)
            )
                
                )
    }
    
    func remove(shoe: MyShoe) {
        shoesCollectionModel.remove(myShoe: shoe)
    }
    
    
    func randomString(length: Int) -> String {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        return String((0..<length).map{ _ in letters.randomElement()! })
    }
    
    func addShoeToCollection(myShoe: MyShoe) {
        shoesCollectionModel.addShoeToCollection(myShoe)
    }
    
    var shoesCollection : [MyShoe]{
        shoesCollectionModel.shoesCollection
    }
    
    func addShoeToCollection() {
        
    }
    
}


