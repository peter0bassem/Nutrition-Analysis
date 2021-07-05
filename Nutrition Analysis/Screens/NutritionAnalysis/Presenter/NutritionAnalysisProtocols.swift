//
//  NutritionAnalysisProtocols.swift
//  Nutrition Analysis
//
//  Created Peter Bassem on 05/07/2021.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

// MARK: NutritionAnalysis Protocols

protocol NutritionAnalysisViewProtocol: BaseViewProtocol {
    var presenter: NutritionAnalysisPresenterProtocol! { get set }
    
    func displayTotalCalories(_ totalCalories: String)
    func displayTotalFatUnits(_ totalFatUnits: String)
    func displayTotalFatUnitDaily(_ totalFatUnitDaily: String)
    func displayTotalCHOLEUnit(_ totalCHOLEUnit: String)
    func displayTotalCHOLEUnitDaily(_ totalCHOLEUnitDaily: String)
    func displayTotalSodiumUnit(_ totalSodiumUnit: String)
    func displayTotalSodiumDaily(_ totalSodiumDaily: String)
    func displayTotalCarbohydratesUnit(_ totalCarbohydratesUnit: String)
    func displayTotalCarbohydratesDaily(_ totalCarbohydratesDaily: String)
    func displayTotalCarbohydratesFiberUnit(_ totalCarbsFiberUnit: String)
    func displayTotalCarbohydratesFiberUnitDaily(_ totalCarbsFiberUnitDaily: String)
    func displayTotalCarbohydratesSugarUnit(_ totalCarbsSugarUnit: String)
    func displaytotalProteinUnit(_ totalProteinUnit: String)
    func displayTotalProteinUnitDaily(_ totalProteinUnitDaily: String)
    func displayTotalVitaminDUnit(_ totalVitaminDUnit: String)
    func displayTotalVitaminDUnitDaily(_ totalVitaminDUnitDaily: String)
    func displayTotalCalciumUnit(_ totalCalciumUnit: String)
    func displayTotalCalciumUnitDaily(_ totalCalciumUnitDaily: String)
    func displayTotalIronUnit(_ totalIronUnit: String)
    func displayTotalIronUnitDaily(_ totalIronUnitDaily: String)
    func displayTotalPotassiumUnit(_ totalPotassiumUnit: String)
    func displayTotalPotassiumUnitDaily(_ totalPotassiumUnitDaily: String)
}

protocol NutritionAnalysisPresenterProtocol: BasePresenterProtocol {
    var view: NutritionAnalysisViewProtocol? { get set }
    
    func viewDidLoad()

}

protocol NutritionAnalysisRouterProtocol {
    
}

protocol NutritionAnalysisInteractorInputProtocol: BaseInteractorInputProtocol {
    var presenter: NutritionAnalysisInteractorOutputProtocol? { get set }
    
}

protocol NutritionAnalysisInteractorOutputProtocol: BaseInteractorOutputProtocol {
    
    
}
