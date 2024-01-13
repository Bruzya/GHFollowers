//
//  GFRepoItemVC.swift
//  GHFollowers
//
//  Created by Evgenii Mazrukho on 05.01.2024.
//

import UIKit

//MARK: - GFRepoItemVCDelegate

protocol GFRepoItemVCDelegate: AnyObject {
    func didTapGitHubProfile(for user: User)
}


final class GFRepoItemVC: GFItemInfoVC {
    
    //MARK: - Properties
    
    weak var delegate: GFRepoItemVCDelegate!

    
    //MARK: - Lifecycle
    
    init(user: User, delegate: GFRepoItemVCDelegate) {
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
        delegate.didTapGitHubProfile(for: user)
    }
    
    
    //MARK: - Private Methods
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "Github Profile")
    }
}
