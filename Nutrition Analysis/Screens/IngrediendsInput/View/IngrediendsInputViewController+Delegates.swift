//
//  IngrediendsInputViewController+Delegates.swift
//  Nutrition Analysis
//
//  Created Peter Bassem on 04/07/2021.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

extension IngrediendsInputViewController: IngrediendsInputViewProtocol {
    
    func setNavigationBarTitle(_ title: String) {
        navigationItem.title = title
    }
    
    func enableAnalyzeButton() {
        _analyzeButton.configureButton(true)
    }
    
    func disableAnalyzeButton() {
        _analyzeButton.configureButton(false)
    }
}
