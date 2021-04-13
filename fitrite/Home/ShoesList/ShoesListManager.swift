import Foundation
import Combine

class ShoesListManager : ObservableObject {
    @Published private var shoesListModel : ShoesList
    
    private var chosenBrand: Brand?
    
    
    private var shoesSubsriber: AnyCancellable?
    
    public func fetchShoes(brands: [Brand]){
        shoesSubsriber = APIController().shoesPublisher
            .sink(receiveCompletion: {_ in }, receiveValue: { (shoes) in
                print(shoes.count)
                
                self.shoesListModel.fetchShoes(shoes: domainShoesMapper(shoesDTO: shoes, brands: brands))
            })
    }
    
    init() {
        shoesListModel = ShoesList()
        print("shoes list managet init")
        //fetchShoes()
        
        //APIController().loadShoesAPI()
    }
    
    init(brand: Brand) {
        chosenBrand = brand
        
        shoesListModel = ShoesList()
        
    }
    
    
    var shoes : [Shoe] {
//        if chosenBrand != nil {
//            return shoesListModel.shoes.filter { $0.brand.id == chosenBrand?.id}
//        }
        return shoesListModel.shoes
    }
    

}

typealias Welcome = [Shoe]
