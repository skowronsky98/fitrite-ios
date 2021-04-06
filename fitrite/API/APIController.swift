import Foundation
import Combine

class APIController{
    private let urlString = "https://fit-rite.herokuapp.com/api/fitrite/brands"
    
    var brandsPublisher: AnyPublisher<[Brand],Error> {
        let url = URL(string: urlString)!
        return URLSession.shared.dataTaskPublisher(for: url)
            .map{ $0.data }
            .decode(type: [Brand].self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
        
    }
    
    
//    func loadBrandsAPI() {
//        var brands = [Brand]()
//
//        guard let url = URL(string: "https://fit-rite.herokuapp.com/api/fitrite/brands")
//        else{
//            print("Invalid URL")
//            return
//        }
//
//        let request = URLRequest(url: url)
//
//        URLSession.shared.dataTask(with: request) { data, response, error in
//
//            if let data = data{
//
//                do{
//                    if let welcome = try? JSONDecoder().decode(Welcome.self, from: data){
//                        brands.append(contentsOf: welcome)
//                        print(brands)
//                    }
//
//                    print(brands)
//
//                }
//            }
//        }.resume()
//
//    }
}
