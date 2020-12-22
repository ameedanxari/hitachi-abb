//
//  ServerManager.swift
//  hitachi-abb
//
//  Created by macintosh on 2020-12-21.
//

import Foundation

//MARK :- API Endpoints
fileprivate struct API
{
    static let BASE_URL           = "https://itunes.apple.com/search?media=podcast&term="
    static let TIMEOUT_INTERVAL   = 30.0
}

//MARK :- API Calls
class ServerManager {
    public static let shared = ServerManager()
    
    private func performRequest(method: String,
                               endpoint: String,
                               params: [String: Any]? = nil,
                               completion: @escaping (Error?, URLResponse?, Data?) -> Void ) {
        
        let url = "\(API.BASE_URL)\(endpoint)"
        var request = URLRequest(url: URL(string: url)! , cachePolicy: .useProtocolCachePolicy, timeoutInterval: API.TIMEOUT_INTERVAL)
        request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")  // the request is JSON
        request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Accept")
        request.httpMethod = method
        if let params = params {
            request.httpBody = try? JSONSerialization.data(withJSONObject: params, options: .prettyPrinted)
        }
        
        if Global.DEBUG {
            print("\(method) Request \(endpoint) with Params \(String(describing: params))")
        }
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if Global.DEBUG {
                print("Response Data: \(String(describing: response))")
            }
            
            completion(error, response, data)
        })
        
        dataTask.resume()
    }
    
    func getSearchResults(_ searchTerm: String, completion: @escaping ([Result]?, Error?) -> Void) -> [Result] {
        performRequest(method: "GET", endpoint: searchTerm) { (error, response, data) in
            if response?.getStatusCode() == 200,
                let data = data,
                let results = try? JSONDecoder().decode(ItunesSearchResponse.self, from: data) {
                
                UtilManager.shared.saveResults(results.results ?? [], for: searchTerm)
                
                completion(results.results, error)
            } else {
                completion(nil, error)
            }
        }
        
        return UtilManager.shared.loadResults(for: searchTerm)
    }
}
