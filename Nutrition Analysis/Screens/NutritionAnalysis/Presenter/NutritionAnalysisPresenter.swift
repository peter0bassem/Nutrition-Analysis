//
//  NutritionAnalysisPresenter.swift
//  Nutrition Analysis
//
//  Created Peter Bassem on 05/07/2021.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

// MARK: NutritionAnalysis Presenter -

class NutritionAnalysisPresenter: BasePresenter {

    weak var view: NutritionAnalysisViewProtocol?
    private let interactor: NutritionAnalysisInteractorInputProtocol
    private let router: NutritionAnalysisRouterProtocol
    private let details: NutritionDetailed
    
    init(view: NutritionAnalysisViewProtocol, interactor: NutritionAnalysisInteractorInputProtocol, router: NutritionAnalysisRouterProtocol, details: NutritionDetailed) {
        self.view = view
        self.interactor = interactor
        self.router = router
        self.details = details
    }
}

// MARK: - NutritionAnalysisPresenterProtocol
extension NutritionAnalysisPresenter: NutritionAnalysisPresenterProtocol {
    
    func viewDidLoad() {
        view?.displayTotalCalories(String((details.totalNutrientsKCal?.eNERC_KCAL?.quantity ?? 0).rounded(.toNearestOrAwayFromZero)))
        
        let totalFat = (details.totalNutrients?.fAT?.quantity ?? 0.0).rounded(.toNearestOrAwayFromZero)
        view?.displayTotalFatUnits(String(format: "%.1f", totalFat) + " \(details.totalNutrients?.fAT?.unit ?? "")")
        
        let totalFatDaily = (details.totalDaily?.fAT?.quantity ?? 0.0).rounded(.toNearestOrAwayFromZero)
        view?.displayTotalFatUnitDaily(String(format: "%.1f", totalFatDaily) + " \(details.totalDaily?.fAT?.unit ?? "")")
        
        let totalCHOLE = (details.totalNutrients?.cHOLE?.quantity ?? 0.0).rounded(.toNearestOrAwayFromZero)
        view?.displayTotalCHOLEUnit(String(format: "%.1f", totalCHOLE) + " \(details.totalNutrients?.cHOLE?.unit ?? "")")
        
        let totalCHOLEDaily = (details.totalDaily?.cHOLE?.quantity ?? 0.0).rounded(.toNearestOrAwayFromZero)
        view?.displayTotalCHOLEUnitDaily(String(format: "%.1f", totalCHOLEDaily) + " \(details.totalDaily?.cHOLE?.unit ?? "")")
        
        let totalSodium = (details.totalNutrients?.nA?.quantity ?? 0.0).rounded(.toNearestOrAwayFromZero)
        view?.displayTotalSodiumUnit(String(format: "%.1f", totalSodium) + " \(details.totalNutrients?.nA?.unit ?? "")")
        
        let totalSodiumDaily = (details.totalDaily?.nA?.quantity ?? 0.0).rounded(.toNearestOrAwayFromZero)
        view?.displayTotalSodiumDaily(String(format: "%.1f", totalSodiumDaily) + " \(details.totalDaily?.nA?.unit ?? "")")
        
        let totalCarbs = (details.totalNutrients?.cHOCDF?.quantity ?? 0.0).rounded(.toNearestOrAwayFromZero)
        view?.displayTotalCarbohydratesUnit(String(format: "%.1f", totalCarbs) + " \(details.totalNutrients?.cHOCDF?.unit ?? "")")
        
        let totalCarbsDaily = (details.totalDaily?.cHOCDF?.quantity ?? 0.0).rounded(.toNearestOrAwayFromZero)
        view?.displayTotalCarbohydratesDaily(String(format: "%.1f", totalCarbsDaily) + " \(details.totalDaily?.cHOCDF?.unit ?? "")")
        
        let totalCarbsFiber = (details.totalNutrients?.fIBTG?.quantity ?? 0.0).rounded(.toNearestOrAwayFromZero)
        view?.displayTotalCarbohydratesFiberUnitDaily(String(format: "%.1f", totalCarbsFiber) + " \(details.totalNutrients?.fIBTG?.unit ?? "")")
        
        let totalCarbsFiberDaily = (details.totalDaily?.fIBTG?.quantity ?? 0.0).rounded(.toNearestOrAwayFromZero)
        view?.displayTotalCarbohydratesSugarUnit(String(format: "%.1f", totalCarbsFiberDaily) + " \(details.totalDaily?.fIBTG?.unit ?? "")")
        
        let totalCarbsSugar = (details.totalNutrients?.sUGAR?.quantity ?? 0.0).rounded(.toNearestOrAwayFromZero)
        view?.displaytotalProteinUnit(String(format: "%.1f", totalCarbsSugar) + " \(details.totalNutrients?.sUGAR?.unit ?? "")")
        
        let totalProtein = (details.totalNutrients?.pROCNT?.quantity ?? 0.0).rounded(.toNearestOrAwayFromZero)
        view?.displayTotalVitaminDUnit(String(format: "%.1f", totalProtein) + " \(details.totalNutrients?.pROCNT?.unit ?? "")")
        
        let totalProteinDaily = (details.totalDaily?.pROCNT?.quantity ?? 0.0).rounded(.toNearestOrAwayFromZero)
        view?.displayTotalProteinUnitDaily(String(format: "%.1f", totalProteinDaily) + " \(details.totalDaily?.pROCNT?.unit ?? "")")
        
        let totalVitaminD = (details.totalNutrients?.vITD?.quantity ?? 0.0).rounded(.toNearestOrAwayFromZero)
        view?.displayTotalVitaminDUnit(String(format: "%.1f", totalVitaminD) + " \(details.totalNutrients?.vITD?.unit ?? "")")
        
        let totalVitaminDDaily = (details.totalDaily?.vITD?.quantity ?? 0.0).rounded(.toNearestOrAwayFromZero)
        view?.displayTotalVitaminDUnitDaily(String(format: "%.1f", totalVitaminDDaily) + " \(details.totalDaily?.vITD?.unit ?? "")")
        
        let totalCalcium = (details.totalNutrients?.cA?.quantity ?? 0.0).rounded(.toNearestOrAwayFromZero)
        view?.displayTotalCalciumUnit(String(format: "%.1f", totalCalcium) + " \(details.totalNutrients?.cA?.unit ?? "")")
        
        let totalCalciumDaily = (details.totalDaily?.cA?.quantity ?? 0.0).rounded(.toNearestOrAwayFromZero)
        view?.displayTotalCalciumUnitDaily(String(String(format: "%.1f", totalCalciumDaily) + " \(details.totalDaily?.cA?.unit ?? "")"))
        
        let totalIron = (details.totalNutrients?.fE?.quantity ?? 0.0).rounded(.toNearestOrAwayFromZero)
        view?.displayTotalIronUnit(String(format: "%.1f", totalIron) + " \(details.totalNutrients?.fE?.unit ?? "")")
        
        let totalIronDaily = (details.totalDaily?.fE?.quantity ?? 0.0).rounded(.toNearestOrAwayFromZero)
        view?.displayTotalIronUnitDaily(String(format: "%.1f", totalIronDaily) + " \(details.totalDaily?.fE?.unit ?? "")")
        
        let totalPotassium = (details.totalNutrients?.k?.quantity ?? 0.0).rounded(.toNearestOrAwayFromZero)
        view?.displayTotalPotassiumUnit(String(format: "%.1f", totalPotassium) + " \(details.totalNutrients?.k?.unit ?? "")")
        
        let totalPotassiumDaily = (details.totalDaily?.k?.quantity ?? 0.0).rounded(.toNearestOrAwayFromZero)
        view?.displayTotalPotassiumUnitDaily(String(format: "%.1f", totalPotassiumDaily) + " \(details.totalDaily?.k?.unit ?? "")")
    }
}

// MARK: - API
extension NutritionAnalysisPresenter: NutritionAnalysisInteractorOutputProtocol {
    
}
