import Foundation

class ShoesCollectionManager: ObservableObject {
    
    @Published private var shoesCollectionModel : ShoesCollection
    
    @Published private var myShoe: ShoesCollection.MyShoe? = nil
    
    init() {
        shoesCollectionModel = ShoesCollection(
            Array(
                arrayLiteral: ShoesCollection.MyShoe(id: "1", shoe: ShoesList.shoes[0], size: 9.0),
                ShoesCollection.MyShoe(id: "2", shoe: ShoesList.shoes[1], size: 8.0),
                ShoesCollection.MyShoe(id: "3", shoe: ShoesList.shoes[2], size: 8.5),
                ShoesCollection.MyShoe(id: "4", shoe: ShoesList.shoes[0], size: 10.0),
                ShoesCollection.MyShoe(id: "5", shoe: ShoesList.shoes[1], size: 9.5))
            )
    }
    
    func remove(shoe: ShoesCollection.MyShoe) {
        shoesCollectionModel.remove(myShoe: shoe)
    }
    
    func addShoeToCollection(myShoe: ShoesCollection.MyShoe) {
        shoesCollectionModel.addShoeToCollection(myShoe)
    }
    
    var shoesCollection : [ShoesCollection.MyShoe]{
        shoesCollectionModel.shoesCollection
    }
    
    func addShoeToCollection() {
        
    }
    
}


