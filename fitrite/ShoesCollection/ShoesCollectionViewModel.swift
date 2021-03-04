import Foundation

class ShoesCollectionViewModel: ObservableObject {
    
    @Published private var shoesCollectionModel : ShoesCollection

    
    
    init() {
        shoesCollectionModel = ShoesCollection(
            Array(
                arrayLiteral: ShoesCollection.MyShoe(id: "1", shoe: Shoes.shoes[0], size: 9.0),
                ShoesCollection.MyShoe(id: "2", shoe: Shoes.shoes[1], size: 8.0),
                ShoesCollection.MyShoe(id: "3", shoe: Shoes.shoes[2], size: 8.5),
                ShoesCollection.MyShoe(id: "4", shoe: Shoes.shoes[0], size: 10.0),
                ShoesCollection.MyShoe(id: "5", shoe: Shoes.shoes[1], size: 9.5))
            )
    }
    
    
    // MARK: - Temporary
//    func generateShoesCollection() -> [ShoesCollection.MyShoe]{
//
//        )
//
//
//        return collection
//    }
    
    func remove(shoe: ShoesCollection.MyShoe) {
        shoesCollectionModel.remove(myShoe: shoe)
    }
    
    var shoesCollection : [ShoesCollection.MyShoe]{
        shoesCollectionModel.shoesCollection
    }
    
}


