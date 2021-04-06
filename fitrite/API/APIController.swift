import Foundation


class APIController{
    
    func loadBrandsAPI() {
        var brands = [Brand]()
        
        guard let url = URL(string: "https://fit-rite.herokuapp.com/api/fitrite/brands")
        else{
            print("Invalid URL")
            return
        }
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            
            if let data = data{
                
                do{
                    if let welcome = try? JSONDecoder().decode(Welcome.self, from: data){
                        brands.append(contentsOf: welcome)
                        print(brands)
                    }
              
                    print(brands)
                    
                }
            }
        }.resume()
        
    }
}
