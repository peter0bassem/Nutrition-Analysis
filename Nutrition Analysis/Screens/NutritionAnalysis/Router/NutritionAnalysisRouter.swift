//
//  NutritionAnalysisRouter.swift
//  Nutrition Analysis
//
//  Created Peter Bassem on 05/07/2021.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

// MARK: NutritionAnalysis Router -

class NutritionAnalysisRouter: NutritionAnalysisRouterProtocol {
    
    weak var viewController: UIViewController?
    
    static func createModule(fromNutrationDetails details: NutritionDetailed) -> UIViewController {
        let view =  NutritionAnalysisViewController()

        let interactor = NutritionAnalysisInteractor()
        let router = NutritionAnalysisRouter()
        let presenter = NutritionAnalysisPresenter(view: view, interactor: interactor, router: router, details: details)
        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view
        return view
    }

}
