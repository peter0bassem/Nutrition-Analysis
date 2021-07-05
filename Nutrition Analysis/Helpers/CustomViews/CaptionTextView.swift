//
//  CaptionTextView.swift
//  Twitter
//
//  Created by Peter Bassem on 10/10/20.
//  Copyright © 2020 Peter Bassem. All rights reserved.
//

import UIKit

class CaptionTextView: UITextView {

    // MARK: - Properties
    
    private lazy var placeholderLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .darkGray
        label.text = "What's happening?"
        return label
    }()
    
    @IBInspectable open var placeholder: String = "" {
        didSet {
            placeholderLabel.text = placeholder
        }
    }
    
    @IBInspectable open var placeholderColor: UIColor = UIColor(red: 0.0, green: 0.0, blue: 0.0980392, alpha: 0.22) {
        didSet {
            placeholderLabel.textColor = placeholderColor
        }
    }
    
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        configure()
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    // MARK: - Helpers
    private func configure() {
        backgroundColor = .white
        font = UIFont.systemFont(ofSize: 16)
        isScrollEnabled = true
        heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        addSubview(placeholderLabel)
        placeholderLabel.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 8, left: 8, bottom: 0, right: 8))
        NotificationCenter.default.addObserver(self, selector: #selector(textInputChange), name: UITextView.textDidChangeNotification, object: nil)
    }
    
    // MARK: - Selectors
    @objc private func textInputChange() {
        placeholderLabel.isHidden = !text.isEmpty
    }
}
