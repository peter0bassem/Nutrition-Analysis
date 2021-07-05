//
//  IngrediendsInputViewController.swift
//  Nutrition Analysis
//
//  Created by Peter Bassem on 04/07/2021.
//

import UIKit

class IngrediendsInputViewController: BaseViewController {
    
    // MARK: - Outlets
    @IBOutlet private weak var ingredientsTextView: CaptionTextView! {
        didSet { ingredientsTextView.delegate = self }
    }
    @IBOutlet private weak var analyzeButton: UIButton!

    // MARK: - Variables
    var presenter: IngrediendsInputPresenterProtocol!
    
    var _analyzeButton: UIButton {
        return analyzeButton
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        presenter.viewDidLoad()
        presenter.validateIngredients(ingredients: ingredientsTextView.text)
    }
}

// MARK: - Helpers
extension IngrediendsInputViewController {
    
}

// MARK: - Selector
extension IngrediendsInputViewController {
 
    @IBAction
    private func analyzeButtonDidPressed(_ sender: UIButton) {
        presenter.performAnalyze(withIngredients: ingredientsTextView.text)
    }
}

// MARK: - UITextViewDelegate
extension IngrediendsInputViewController: UITextViewDelegate {
    
    func textViewDidChange(_ textView: UITextView) {
        presenter.validateIngredients(ingredients: textView.text)
    }
}
