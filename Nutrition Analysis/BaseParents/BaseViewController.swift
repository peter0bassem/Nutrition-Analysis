//
//  BaseViewController.swift
//  Aman Elshark
//
//  Created by Peter Bassem on 1/12/20.
//  Copyright © 2020 Peter Bassem. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    // MARK: - Properties
    
    // MARK: - Init
    init() {
        super.init(nibName: String(describing: type(of: self)), bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - UIViewController Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}

// MARK: - Helpers
extension BaseViewController {
    
}

extension BaseViewController: BaseViewProtocol {
    
    func showLoading() {
        view.isUserInteractionEnabled = false
        showSpinner(onView: view)
    }
    
    func hideLoading() {
        view.isUserInteractionEnabled = true
        removeSpinner(fromView: view)
    }
    
    func showError(_ error: String) {
        alert(message: error, actions: [("OK", UIAlertAction.Style.default)])
    }
}
