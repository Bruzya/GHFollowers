//
//  UIView + ext.swift
//  GHFollowers
//
//  Created by Evgenii Mazrukho on 13.01.2024.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        views.forEach { addSubview($0) }
    }
}
