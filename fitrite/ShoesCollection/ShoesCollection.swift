import Foundation

struct ShoesCollection{
    var shoesCollection: [Shoe]
    
    func choose(_ shoe: Shoe){
        print("shoe chosen \(shoe.model)")
    }
    mutating func remove(shoe: Shoe){
        let index = shoesCollection.firstIndex(matching: shoe)!
        shoesCollection.remove(at: index)
    }
    
    init(shoesCollection : [Shoe]) {
        self.shoesCollection = shoesCollection
    }
}
