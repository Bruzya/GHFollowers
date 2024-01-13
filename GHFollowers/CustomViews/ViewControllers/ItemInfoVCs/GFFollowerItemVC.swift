//
//  GFFollowerItemVC.swift
//  GHFollowers
//
//  Created by Evgenii Mazrukho on 05.01.2024.
//

import UIKit

final class GFFollowerItemVC: GFItemInfoVC {
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureItems()
    }
    
    
    //MARK: - Action
    
    override func actionButtonTapped() {
        delegate.didTapGetFollowers(for: user)
    }

    //MARK: - Private Methods
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }
}
