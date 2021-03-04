import Foundation

struct ShoesCollection{
    var shoesCollection: [MyShoe] = Array()
    
    func choose(_ myShoe: MyShoe){
        print("shoe chosen \(myShoe.shoe.model)")
    }
    mutating func remove(myShoe: MyShoe){
        let index = shoesCollection.firstIndex(matching: myShoe)!
        shoesCollection.remove(at: index)
    }
    
    init(_ shoesCollection : [MyShoe]) {
        self.shoesCollection = shoesCollection
    }
    
    init (){}
    
    struct MyShoe : Identifiable {
        let id : String
        let shoe: Shoe
        var size: Double
    }
}
