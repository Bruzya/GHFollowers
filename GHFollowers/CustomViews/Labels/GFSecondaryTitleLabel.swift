//
//  GFSecondaryTitleLabel.swift
//  GHFollowers
//
//  Created by Evgenii Mazrukho on 05.01.2024.
//

import UIKit

final class GFSecondaryTitleLabel: UILabel {

    //MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    
        configure()
    }
    
    
    convenience init(fontSize: CGFloat) {
        self.init(frame: .zero)
        font = UIFont.systemFont(ofSize: fontSize, weight: .medium)
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK: - Private Methods
    
    private func configure() {
        textColor = .secondaryLabel
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.9
        lineBreakMode = .byTruncatingTail
        translatesAutoresizingMaskIntoConstraints = false
    }
}
