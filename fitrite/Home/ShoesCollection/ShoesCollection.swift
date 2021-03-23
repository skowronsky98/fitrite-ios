import Foundation

struct ShoesCollection{
    var shoesCollection: [MyShoe] = Array()
    
    static var Shoes = [MyShoe] (  arrayLiteral: MyShoe(id: "1", shoe: Shoe(id: "1", model: "Air Max 97", brand: BrandList.Brands[0], image: "shoe"), size: SizeChartCollection.SizeCharts[0]),
                                   MyShoe(id: "2", shoe: Shoe(id: "2", model: "Air Force 1", brand: BrandList.Brands[0], image: "shoe"), size: SizeChartCollection.SizeCharts[1]),
                                   MyShoe(id: "3", shoe: Shoe(id: "2", model: "Air Force 1", brand: BrandList.Brands[0], image: "shoe"), size: SizeChartCollection.SizeCharts[2]),
                                   MyShoe(id: "4", shoe: Shoe(id: "3", model: "Yeezy Boost 350", brand:  BrandList.Brands[1], image: "shoe"), size: SizeChartCollection.SizeCharts[5]))
    
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
