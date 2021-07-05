//
//  APIResponse.swift
//  MandoBee
//
//  Created by Peter Bassem on 18/06/2021.
//

import Foundation

struct APIResponse<T: Codable>: Codable {
    let status : Int?
    let msg : String?
    let data: T?
    
    enum CodingKeys: String, CodingKey {

        case status = "status"
        case msg = "msg"
        case data = "data"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        status = try values.decodeIfPresent(Int.self, forKey: .status)
        msg = try values.decodeIfPresent(String.self, forKey: .msg)
        data = try values.decodeIfPresent(T.self, forKey: .data)
    }
}
