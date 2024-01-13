//
//  GFAlertContainerView.swift
//  GHFollowers
//
//  Created by Evgenii Mazrukho on 13.01.2024.
//

import UIKit

class GFAlertContainerView: UIView {

    //MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK: - Private Methods
    
    private func configure() {
        
        backgroundColor = .systemBackground
        layer.cornerRadius = 16
        layer.borderWidth = 2
        layer.borderColor = UIColor.white.cgColor
        translatesAutoresizingMaskIntoConstraints = false
    }
}
