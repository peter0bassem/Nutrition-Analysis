//
//  BaseProtocols.swift
//  Aman Elshark
//
//  Created by Peter Bassem on 1/12/20.
//  Copyright © 2020 Peter Bassem. All rights reserved.
//

import Foundation

protocol BaseViewProtocol: AnyObject {
    func showLoading()
    func hideLoading()
    func showError(_ error: String)
}

protocol BasePresenterProtocol: AnyObject {
}

protocol BaseInteractorInputProtocol: AnyObject {
    
}

protocol BaseInteractorOutputProtocol: AnyObject {
    
}
