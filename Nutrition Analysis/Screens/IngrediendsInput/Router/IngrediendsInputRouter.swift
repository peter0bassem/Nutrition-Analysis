//
//  IngrediendsInputRouter.swift
//  Nutrition Analysis
//
//  Created Peter Bassem on 04/07/2021.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

// MARK: IngrediendsInput Router -

class IngrediendsInputRouter: IngrediendsInputRouterProtocol {
    
    weak var viewController: UIViewController?
    
    static func createModule() -> UIViewController {
        let view =  IngrediendsInputViewController()

        let interactor = IngrediendsInputInteractor(
            useCase: NutrationAnalysisUseCase(nurationDetailsRepository: NurationDetailsRepositoryImp()))
        let router = IngrediendsInputRouter()
        let presenter = IngrediendsInputPresenter(view: view, interactor: interactor, router: router)
        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view
        return view
    }

    func navigateToNutrationDetails(withDetails details: NutritionDetailed) {
        let nutrationsAnalysisViewController = NutritionAnalysisRouter.createModule(fromNutrationDetails: details)
        viewController?.navigationController?.pushViewController(nutrationsAnalysisViewController, animated: true)
    }
}
