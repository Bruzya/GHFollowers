//
//  GFAvatarImageView.swift
//  GHFollowers
//
//  Created by Evgenii Mazrukho on 01.01.2024.
//

import UIKit

final class GFAvatarImageView: UIImageView {

    //MARK: - Properties
    
    let placeholderImage = Images.placeholder
    
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
        layer.cornerRadius = 10
        clipsToBounds = true
        image = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
}
