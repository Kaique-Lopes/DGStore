//
//  ProductsAPI.swift
//  DGStore
//
//  Created by Kaique Lopes de Oliveira on 26/03/22.
//

import Foundation

class DigioApi {
    public static func getProducts(completion: @escaping(([String: Any], Error?) -> Void)) {
        let endPoint: String = "https://7hgi9vtkdc.execute-api.sa-east-1.amazonaws.com/sandbox/products"
        let url: URL = URL.init(string: endPoint)!
        var request: URLRequest = URLRequest(url: url)
        request.httpMethod = "GET"
        URLSession.shared.dataTask(with: request, completionHandler: { data, _, error in
            if let data = data {
                do {
                    let jsonResult: Dictionary = try JSONSerialization
                        .jsonObject(with: data,
                                    options: JSONSerialization.ReadingOptions.mutableContainers)
                        as? [String: Any] ?? [:]
                    completion(jsonResult, error)
                } catch {
                    completion([:], error)
                }
                
                return
            }
            completion([:], error)
        }).resume()
    }
}
