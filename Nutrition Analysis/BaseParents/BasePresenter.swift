//
//  BasePresenter.swift
//  Aman Elshark
//
//  Created by Peter Bassem on 1/12/20.
//  Copyright © 2020 Peter Bassem. All rights reserved.
//

import Foundation
import UIKit

class BasePresenter: BasePresenterProtocol {

    func secondsToHoursMinutesSeconds (seconds: Int) -> (Int, Int, Int) {
      return (seconds / 3600, (seconds % 3600) / 60, (seconds % 3600) % 60)
    }
}
