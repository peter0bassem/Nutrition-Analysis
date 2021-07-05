//
//  StringExtensions.swift
//  Nutrition Analysis
//
//  Created by Peter Bassem on 05/07/2021.
//

import Foundation

extension String {
    
    var lines: [String] {
        return self.components(separatedBy: "\n")
    }
}
