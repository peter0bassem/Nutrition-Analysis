//
//  NutrationAnalysisUseCase.swift
//  Nutrition Analysis
//
//  Created by Peter Bassem on 05/07/2021.
//

import Foundation

class NutrationAnalysisUseCase {
    
    private let nurationDetailsRepository: NurationDetailsRepository
    
    init(nurationDetailsRepository: NurationDetailsRepository) {
        self.nurationDetailsRepository = nurationDetailsRepository
    }
    
    func getDetails(ingredients: [String], completion: @escaping (Result<NutritionDetailed, Error>) -> Void) {
        nurationDetailsRepository.getDetails(ingredients: ingredients, completion: completion)
    }
}
