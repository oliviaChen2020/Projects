//
//  ViewModel.swift
//  Reddit
//
//  Created by Limei  Chen on 10/14/21.
//

import Foundation

enum RedditError: Error {
    case parse
}

typealias RedditResponse = Result<Response, RedditError>

struct ViewModel {
    static func fetch(input:String,_ completion: @escaping(RedditResponse) ->()) {
        if let url = URL(string: "https://reddit.com/r/\(input)/.json") {
            let request = URLRequest(url: url)
            URLSession.shared.dataTask(with: request) { (data, response, error) in
                guard let data = data else {
                    return
                }
                guard let response: Response = try? JSONDecoder().decode(Response.self, from: data) else {
                    return
                }
                completion(.success(response))
//                completion(.failure(.parse))
            }.resume()
        }
    }
}
