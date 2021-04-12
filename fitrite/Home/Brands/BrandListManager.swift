import Foundation
import Combine

class BrandListManager: ObservableObject {
    
    @Published private var brandListModel : BrandList
    
    private var brandSubsriber: AnyCancellable?
    
    private func fetchBrands(){
        brandSubsriber = APIController().brandsPublisher
            .sink(receiveCompletion: {_ in }, receiveValue: { (brands) in
                self.brandListModel.fetchBrands(brands)
            })
    }
    
    init() {

        brandListModel = BrandList()
        print("brand list manager init")
        fetchBrands()
       
      
    }
    
    

    
    var brandList: [Brand]{
        brandListModel.brands
    }
}



