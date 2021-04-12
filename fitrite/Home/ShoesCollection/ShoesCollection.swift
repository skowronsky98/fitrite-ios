import Foundation

struct ShoesCollection{
    var shoesCollection: [MyShoe] = Array()
    
    static var Shoes = [MyShoe] (  arrayLiteral: MyShoe(id: "1", shoe: ShoesList.Shoes[0], size: SizeChartCollection.SizeCharts[0]),
                                   MyShoe(id: "2", shoe: ShoesList.Shoes[1], size: SizeChartCollection.SizeCharts[1]),
                                   MyShoe(id: "3", shoe: ShoesList.Shoes[0], size: SizeChartCollection.SizeCharts[2]),
                                   MyShoe(id: "4", shoe: ShoesList.Shoes[2], size: SizeChartCollection.SizeCharts[5]))
    
    //    func choose(_ myShoe: MyShoe){
    //        print("shoe chosen \(myShoe.shoe?.model)")
    //    }
    mutating func remove(myShoe: MyShoe){
        let index = shoesCollection.firstIndex(matching: myShoe)!
        shoesCollection.remove(at: index)
    }
    
    mutating func addShoeToCollection(_ newElement: MyShoe) {
        shoesCollection.append(newElement)
    }
    
    init(_ shoesCollection : [MyShoe]) {
        self.shoesCollection = shoesCollection
    }
    
    init (){}
    
    
}

struct MyShoe : Identifiable, Codable {
    var id : String
    var shoe: Shoe
    var size: SizeChart
}
