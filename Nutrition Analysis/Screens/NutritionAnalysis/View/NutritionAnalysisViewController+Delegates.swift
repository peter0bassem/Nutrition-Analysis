//
//  NutritionAnalysisViewController+Delegates.swift
//  Nutrition Analysis
//
//  Created Peter Bassem on 05/07/2021.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

extension NutritionAnalysisViewController: NutritionAnalysisViewProtocol {
    
    func displayTotalCalories(_ totalCalories: String) {
        caloriesLabel.text = totalCalories
    }
    
    func displayTotalFatUnits(_ totalFatUnits: String) {
        totalFatLabel.text = totalFatUnits
    }
    
    func displayTotalFatUnitDaily(_ totalFatUnitDaily: String) {
        totalFatDailyLabel.text = totalFatUnitDaily
    }
    
    func displayTotalCHOLEUnit(_ totalCHOLEUnit: String) {
        cholesterolLabel.text = totalCHOLEUnit
    }
    
    func displayTotalCHOLEUnitDaily(_ totalCHOLEUnitDaily: String) {
        cholesterolDailyLabel.text = totalCHOLEUnitDaily
    }
    
    func displayTotalSodiumUnit(_ totalSodiumUnit: String) {
        sodiumLabel.text = totalSodiumUnit
    }
    
    func displayTotalSodiumDaily(_ totalSodiumDaily: String) {
        sodiumDailyLabel.text = totalSodiumDaily
    }
    
    func displayTotalCarbohydratesUnit(_ totalCarbohydratesUnit: String) {
        totalCarbohydrateLabel.text = totalCarbohydratesUnit
    }
    
    func displayTotalCarbohydratesDaily(_ totalCarbohydratesDaily: String) {
        totalCarbohydrateDailyLabel.text = totalCarbohydratesDaily
    }
    
    func displayTotalCarbohydratesFiberUnit(_ totalCarbsFiberUnit: String) {
        dietaryFiberLabel.text = totalCarbsFiberUnit
    }
    
    func displayTotalCarbohydratesFiberUnitDaily(_ totalCarbsFiberUnitDaily: String) {
        dietaryFiberDailyLabel.text = totalCarbsFiberUnitDaily
    }
    
    func displayTotalCarbohydratesSugarUnit(_ totalCarbsSugarUnit: String) {
        totalSugarsLabel.text = totalCarbsSugarUnit
    }
    
    func displaytotalProteinUnit(_ totalProteinUnit: String) {
        proteinLabel.text = totalProteinUnit
    }
    
    func displayTotalProteinUnitDaily(_ totalProteinUnitDaily: String) {
        proteinDailyLabel.text = totalProteinUnitDaily
    }
    
    func displayTotalVitaminDUnit(_ totalVitaminDUnit: String) {
        vitaminDLabel.text = totalVitaminDUnit
    }
    
    func displayTotalVitaminDUnitDaily(_ totalVitaminDUnitDaily: String) {
        vitaminDDailyLabel.text = totalVitaminDUnitDaily
    }
    
    func displayTotalCalciumUnit(_ totalCalciumUnit: String) {
        calciumLabel.text = totalCalciumUnit
    }
    
    func displayTotalCalciumUnitDaily(_ totalCalciumUnitDaily: String) {
        calciumDailyLabel.text = totalCalciumUnitDaily
    }
    
    func displayTotalIronUnit(_ totalIronUnit: String) {
        ironLabel.text = totalIronUnit
    }
    
    func displayTotalIronUnitDaily(_ totalIronUnitDaily: String) {
        ironDailyLabel.text = totalIronUnitDaily
    }
    
    func displayTotalPotassiumUnit(_ totalPotassiumUnit: String) {
        potassiumLabel.text = totalPotassiumUnit
    }
    
    func displayTotalPotassiumUnitDaily(_ totalPotassiumUnitDaily: String) {
        potassiumDailyLabel.text = totalPotassiumUnitDaily
    }
    
    
}
