//
//  URLResponse+Extension.swift
//  hitachi-abb
//
//  Created by macintosh on 2020-12-21.
//

import Foundation

extension URLResponse {
    
    func getStatusCode() -> Int? {
        if let httpResponse = self as? HTTPURLResponse {
            return httpResponse.statusCode
        }
        return nil
    }
    
}
