//
//  UIButtonExtensions.swift
//  Driver
//
//  Created by Peter Bassem on 27/12/2020.
//  Copyright © 2020 Eslam Maged. All rights reserved.
//

import UIKit

extension UIButton {
    
    func configureButton(_ enable: Bool) {
        isEnabled = enable
        alpha = enable ? 1 : 0.5
    }
}
