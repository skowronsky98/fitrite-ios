import Foundation

class ShoesCollectionManager: ObservableObject {
    
    @Published private var shoesCollectionModel : ShoesCollection 
    
    init() {
        shoesCollectionModel = ShoesCollection(ShoesCollection.Shoes)
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
    
    func addShoeToCollection(id: String, shoe: Shoe, size: SizeChart) {
        shoesCollectionModel.addShoeToCollection(MyShoe(id: id, shoe: shoe, size: size))
    }
    
    var shoesCollection : [MyShoe]{
        shoesCollectionModel.shoesCollection
    }
    
    
   
}


