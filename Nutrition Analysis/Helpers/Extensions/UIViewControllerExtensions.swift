//
//  UIViewControllerExtensions.swift
//  Nutrition Analysis
//
//  Created by Peter Bassem on 05/07/2021.
//

import UIKit

extension UIViewController {
    
    func alert(title: String = "", message: String, actions: [(String, UIAlertAction.Style)]) {
        
        let alerting = UIAlertController(title: title, message: message, preferredStyle: .alert)
        for action in actions {
            alerting.addAction(UIAlertAction(title: action.0, style: action.1, handler: nil))
        }
        self.present(alerting, animated: true, completion: nil)
    }
}

// MARK: - Create loder view
private let spinnerTag = 101010101014510
extension UIViewController {
    func showSpinner(onView: UIView, backColor: UIColor = UIColor.black.withAlphaComponent(0)) {
        let spinnerView = UIView(frame: onView.bounds)
        spinnerView.backgroundColor = backColor
        //
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        blurEffectView.cornerRadius = 10
        blurEffectView.clipsToBounds = true
        blurEffectView.center = spinnerView.center
        spinnerView.addSubview(blurEffectView)
        //
        var ai = UIActivityIndicatorView()
        if #available(iOS 13, *) {
            ai = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.large)
        } else {
            ai = UIActivityIndicatorView(style: .whiteLarge)
        }
        ai.color = .white
        ai.startAnimating()
        ai.center = spinnerView.center

        DispatchQueue.main.async {
            spinnerView.addSubview(ai)
            onView.addSubview(spinnerView)
        }

        spinnerView.tag = spinnerTag
    }

    func removeSpinner(fromView: UIView) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.1) {
            var loader: UIView? = fromView.viewWithTag(spinnerTag)
            UIView.animate(withDuration: 0.2, animations: {
                loader?.alpha = 0
            }, completion: { _ in
                loader?.removeFromSuperview()
                loader = nil
            })
        }
    }
}
