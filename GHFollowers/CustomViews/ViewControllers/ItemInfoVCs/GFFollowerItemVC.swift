//
//  GFFollowerItemVC.swift
//  GHFollowers
//
//  Created by Evgenii Mazrukho on 05.01.2024.
//

import UIKit

//MARK: - GFFollowerItemVCDelegate

protocol GFFollowerItemVCDelegate: AnyObject {
    func didTapGetFollowers(for user: User)
}


final class GFFollowerItemVC: GFItemInfoVC {
    
    
    //MARK: - Properties
    
    weak var delegate: GFFollowerItemVCDelegate!

    
    //MARK: - Lifecycle
    
    init(user: User, delegate: GFFollowerItemVCDelegate) {
        super.init(user: user)
        self.delegate = delegate
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
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
