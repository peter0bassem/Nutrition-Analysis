//
//  NurationDetailsRequest.swift
//  Nutrition Analysis
//
//  Created by Peter Bassem on 05/07/2021.
//

import Foundation

struct NurationDetailsRequest: Codable {
    let app_id: String
    let app_key: String
    let ingr: [String]
}
