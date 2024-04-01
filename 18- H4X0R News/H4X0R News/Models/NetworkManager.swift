//
//  NetworkManager.swift
//  H4X0R News
//
//  Created by Pichborith Kong on 3/31/24.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts: [Post] = []
//    var posts = [Post]()
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) {
                data, response, error in
                if error == nil {
                    if let safeData = data {
                        do {
                            let results = try JSONDecoder().decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                        } catch {
                            print(error.localizedDescription)
                        }
                    }
                    
                }
            }
            task.resume()
        }
    }
}
