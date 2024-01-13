//
//  GFTitleLabel.swift
//  GHFollowers
//
//  Created by Evgenii Mazrukho on 31.12.2023.
//

import UIKit

final class GFTitleLabel: UILabel {

    //MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    
        configure()
    }
    
    
    convenience init(textAlignment: NSTextAlignment, fontSize: CGFloat) {
        self.init(frame: .zero)
        self.textAlignment = textAlignment
        self.font = UIFont.systemFont(ofSize: fontSize, weight: .bold)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK: - Private Methods
    
    private func configure() {
        textColor = .label
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.9
        lineBreakMode = .byTruncatingTail
        translatesAutoresizingMaskIntoConstraints = false
    }
}
