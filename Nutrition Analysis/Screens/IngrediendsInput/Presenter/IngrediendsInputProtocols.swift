//
//  IngrediendsInputProtocols.swift
//  Nutrition Analysis
//
//  Created Peter Bassem on 04/07/2021.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

// MARK: IngrediendsInput Protocols

protocol IngrediendsInputViewProtocol: BaseViewProtocol {
    var presenter: IngrediendsInputPresenterProtocol! { get set }
    
    func setNavigationBarTitle(_ title: String)
    func enableAnalyzeButton()
    func disableAnalyzeButton()
}

protocol IngrediendsInputPresenterProtocol: BasePresenterProtocol {
    var view: IngrediendsInputViewProtocol? { get set }
    
    func viewDidLoad()

    func validateIngredients(ingredients: String?)
    func performAnalyze(withIngredients ingredients: String?)
}

protocol IngrediendsInputRouterProtocol {
    func navigateToNutrationDetails(withDetails details: NutritionDetailed)
}

protocol IngrediendsInputInteractorInputProtocol: BaseInteractorInputProtocol {
    var presenter: IngrediendsInputInteractorOutputProtocol? { get set }
    
    func getNutrationDetails(fromIngredients ingredients: [String])
}

protocol IngrediendsInputInteractorOutputProtocol: BaseInteractorOutputProtocol {
    
    func fetchingDetailsSuccessfully(_ details: NutritionDetailed)
    func fetchingDetailsFailedWithError(_ error: Error)
}
