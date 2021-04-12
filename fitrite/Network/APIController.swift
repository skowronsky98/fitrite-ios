import Foundation
import Combine

class APIController{
    private let brandURLString = "https://fit-rite.herokuapp.com/api/fitrite/brands"
    
    var brandsPublisher: AnyPublisher<[Brand],Error> {
        let url = URL(string: brandURLString)!
        return URLSession.shared.dataTaskPublisher(for: url)
            .map{ $0.data }
            .decode(type: [Brand].self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
        
    }
    
    private let shoesURLString = "https://fit-rite.herokuapp.com/api/fitrite/shoes"
    
    var shoesPublisher: AnyPublisher<[ShoeDTO],Error> {
        let url = URL(string: shoesURLString)!
        return URLSession.shared.dataTaskPublisher(for: url)
            .map{ $0.data }
            .decode(type: [ShoeDTO].self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
        
    }
    
    
//    func loadShoesAPI() {
//        var shoes = [Shoe]()
//
//        guard let url = URL(string: "https://fit-rite.herokuapp.com/api/fitrite/shoes?page=1&size=5&sort=modelName&direction=DESC")
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
//                        shoes.append(contentsOf: welcome)
//                        print(shoes)
//                    }
//
//                    print(shoes)
//
//                }
//            }
//        }.resume()
//
//    }
}
