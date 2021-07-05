//
//  APIRouter.swift
//  Nutrition Analysis
//
//  Created by Peter Bassem on 05/07/2021.
//

import Foundation
import Alamofire

enum APIRouter: APIConfiguration {
    case getNurationDetails(ingredients: [String])
    
    var method: HTTPMethod {
        switch self {
        case .getNurationDetails: return .post
        }
    }
    
    var path: String {
        switch self {
        case .getNurationDetails: return "nutrition-details"
        }
    }
    
    var query: [URLQueryItem]? {
        switch self {
        case .getNurationDetails: return nil
        }
    }
    
    var parameters: Parameters? {
        switch self {
        case .getNurationDetails(let ingredients):
            return try? NurationDetailsRequest(app_id: Constants.appId, app_key: Constants.appKey, ingr: ingredients).asDictionary()
        }
    }
    
    func asURLRequest() throws -> URLRequest {
        var url = try K.ProductionServer.baseURL.asURL()
        
        if let query = query {
            var urlComponents = URLComponents(string: url.absoluteString)
            urlComponents?.queryItems = query
            url = try (urlComponents?.asURL())!
        }
        
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        
        // HTTP Method
        urlRequest.httpMethod = method.rawValue
        
        // Common Headers
        HeaderInterceptor.defaultHeaderIntercepter(fromURLRequest: &urlRequest)
        
        // Parameters
        if let parameters = parameters {
            do {
                urlRequest.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: [])
            } catch {
                throw AFError.parameterEncodingFailed(reason: .jsonEncodingFailed(error: error))
            }
        }
        return urlRequest
    }
}
