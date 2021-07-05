//
//  RemoteNurationDetailsDataSource.swift
//  Nutrition Analysis
//
//  Created by Peter Bassem on 05/07/2021.
//

import Foundation

class RemoteNurationDetailsDataSource {
    
    func getFromRemote(ingredients: [String], completion: @escaping (Result<NutritionDetailed, Error>) -> Void) {
        APIClient.performRequest(route: APIRouter.getNurationDetails(ingredients: ingredients)).execute { (result) in
            completion(.success(result))
        } onFailure: { error in
            completion(.failure(error))
        }

    }
}
