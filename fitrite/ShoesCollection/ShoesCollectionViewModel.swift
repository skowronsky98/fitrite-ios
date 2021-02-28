import Foundation

class ShoesCollectionViewModel: ObservableObject {
    
    @Published private var shoesCollectionModel = ShoesCollectionViewModel.createShoesCollection()
    
    static func createShoesCollection() -> ShoesCollection {
        return ShoesCollection(shoesCollection: Shoes.shoes)
    }
    
    func remove(shoe: Shoe) {
        shoesCollectionModel.remove(shoe: shoe)
    }
    
    var shoesCollection : [Shoe]{
        shoesCollectionModel.shoesCollection
    }
    
}


