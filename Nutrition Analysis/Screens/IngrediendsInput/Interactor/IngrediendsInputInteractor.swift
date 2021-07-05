//
//  IngrediendsInputInteractor.swift
//  Nutrition Analysis
//
//  Created Peter Bassem on 04/07/2021.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

// MARK: IngrediendsInput Interactor -

class IngrediendsInputInteractor: IngrediendsInputInteractorInputProtocol {
    
    weak var presenter: IngrediendsInputInteractorOutputProtocol?
    var useCase: NutrationAnalysisUseCase
    
    init(useCase: NutrationAnalysisUseCase) {
        self.useCase = useCase
    }
    
    func getNutrationDetails(fromIngredients ingredients: [String]) {
        useCase.getDetails(ingredients: ingredients) { result in
            switch result {
            case .success(let nutritionDetailed):
                DispatchQueue.main.async { [weak self] in
                    self?.presenter?.fetchingDetailsSuccessfully(nutritionDetailed)
                }
            case .failure(let error):
                DispatchQueue.main.async { [weak self] in
                    self?.presenter?.fetchingDetailsFailedWithError(error)
                }
            }
        }
    }
}
