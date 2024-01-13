//
//  GFRepoItemVC.swift
//  GHFollowers
//
//  Created by Evgenii Mazrukho on 05.01.2024.
//

import UIKit

final class GFRepoItemVC: GFItemInfoVC {
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureItems()
    }
    
    
    //MARK: - Action
    
    override func actionButtonTapped() {
        delegate.didTapGitHubProfile(for: user)
    }
    
    
    //MARK: - Private Methods
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "Github Profile")
    }
}
