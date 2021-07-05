//
//  NurationDetailsRepository.swift
//  Nutrition Analysis
//
//  Created by Peter Bassem on 05/07/2021.
//

import Foundation

protocol NurationDetailsRepository {
    func getDetails(ingredients: [String], completion: @escaping (Result<NutritionDetailed, Error>) -> Void)
}
