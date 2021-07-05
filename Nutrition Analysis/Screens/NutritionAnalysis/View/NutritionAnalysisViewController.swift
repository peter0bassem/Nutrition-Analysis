//
//  NutritionAnalysisViewController.swift
//  Nutrition Analysis
//
//  Created by Peter Bassem on 05/07/2021.
//

import UIKit

final class NutritionAnalysisViewController: BaseViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var totalFatLabel: UILabel!
    @IBOutlet weak var totalFatDailyLabel: UILabel!
    @IBOutlet weak var cholesterolLabel: UILabel!
    @IBOutlet weak var cholesterolDailyLabel: UILabel!
    @IBOutlet weak var sodiumLabel: UILabel!
    @IBOutlet weak var sodiumDailyLabel: UILabel!
    @IBOutlet weak var totalCarbohydrateLabel: UILabel!
    @IBOutlet weak var totalCarbohydrateDailyLabel: UILabel!
    @IBOutlet weak var dietaryFiberLabel: UILabel!
    @IBOutlet weak var dietaryFiberDailyLabel: UILabel!
    @IBOutlet weak var totalSugarsLabel: UILabel!
    @IBOutlet weak var proteinLabel: UILabel!
    @IBOutlet weak var proteinDailyLabel: UILabel!
    @IBOutlet weak var vitaminDLabel: UILabel!
    @IBOutlet weak var vitaminDDailyLabel: UILabel!
    @IBOutlet weak var calciumLabel: UILabel!
    @IBOutlet weak var calciumDailyLabel: UILabel!
    @IBOutlet weak var ironLabel: UILabel!
    @IBOutlet weak var ironDailyLabel: UILabel!
    @IBOutlet weak var potassiumLabel: UILabel!
    @IBOutlet weak var potassiumDailyLabel: UILabel!
    
    // MARK: - Variables
    var presenter: NutritionAnalysisPresenterProtocol!

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        presenter.viewDidLoad()
    }
}

// MARK: - Helpers
extension NutritionAnalysisViewController {
    
}
