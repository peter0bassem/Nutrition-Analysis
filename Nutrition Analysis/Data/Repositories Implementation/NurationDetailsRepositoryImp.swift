//
//  NurationDetailsRepositoryImp.swift
//  Nutrition Analysis
//
//  Created by Peter Bassem on 05/07/2021.
//

import Foundation

class NurationDetailsRepositoryImp: NurationDetailsRepository {
    
    private let remoteNurationDetailsDataSource = RemoteNurationDetailsDataSource()
    
    func getDetails(ingredients: [String], completion: @escaping (Result<NutritionDetailed, Error>) -> Void) {
        remoteNurationDetailsDataSource.getFromRemote(ingredients: ingredients, completion: completion)
    }
}
