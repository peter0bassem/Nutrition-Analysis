//
//  IngrediendsInputPresenter.swift
//  Nutrition Analysis
//
//  Created Peter Bassem on 04/07/2021.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

// MARK: IngrediendsInput Presenter -

class IngrediendsInputPresenter: BasePresenter {

    weak var view: IngrediendsInputViewProtocol?
    private let interactor: IngrediendsInputInteractorInputProtocol
    private let router: IngrediendsInputRouterProtocol
    
    init(view: IngrediendsInputViewProtocol, interactor: IngrediendsInputInteractorInputProtocol, router: IngrediendsInputRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

// MARK: - IngrediendsInputPresenterProtocol
extension IngrediendsInputPresenter: IngrediendsInputPresenterProtocol {
    
    func viewDidLoad() {
        view?.setNavigationBarTitle("Nuration Analysis")
        
    }
    
    func validateIngredients(ingredients: String?) {
        let validIngredients = ingredients?.isEmpty == false && (ingredients?.count ?? 0) > 0
        validIngredients ? view?.enableAnalyzeButton() : view?.disableAnalyzeButton()
    }
}

// MARK: - API
extension IngrediendsInputPresenter: IngrediendsInputInteractorOutputProtocol {
    
    func fetchingDetailsSuccessfully(_ details: NutritionDetailed) {
        view?.hideLoading()
        router.navigateToNutrationDetails(withDetails: details)
    }
    
    func fetchingDetailsFailedWithError(_ error: Error) {
        view?.hideLoading()
        print(error)
    }
}

// MARK: - Selectors
extension IngrediendsInputPresenter {
    
    func performAnalyze(withIngredients ingredients: String?) {
        guard let ingredientsList = ingredients?.lines else {
            return
        }
        view?.showLoading()
        interactor.getNutrationDetails(fromIngredients: ingredientsList)
    }
}
