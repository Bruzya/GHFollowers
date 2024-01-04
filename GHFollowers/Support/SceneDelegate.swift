//
//  SceneDelegate.swift
//  GHFollowers
//
//  Created by Evgenii Mazrukho on 31.12.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = createTabbar()
        window?.makeKeyAndVisible()
        
        configureNavigationBar()
    }
    
    func createSearchNC() -> UINavigationController {
        let searchVC = SearchVC()
        searchVC.title = "Search"
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: searchVC)
    }
    
    func createFavoritesNC() -> UINavigationController {
        let favoritesListVC = FavoritesListVC()
        favoritesListVC.title = "Favorites"
        favoritesListVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return UINavigationController(rootViewController: favoritesListVC)
    }
    
    func createTabbar() -> UITabBarController {
        let tabbar = UITabBarController()
        UITabBar.appearance().tintColor = .systemGreen
        if #available(iOS 15.0, *) {
            let tabbarAppearance = UITabBarAppearance()
            tabbarAppearance.configureWithDefaultBackground()
            UITabBar.appearance().scrollEdgeAppearance = tabbarAppearance
        }

        tabbar.viewControllers = [createSearchNC(),
                                  createFavoritesNC()]

        return tabbar
    }
    
    func configureNavigationBar() {
        UINavigationBar.appearance().tintColor = .systemGreen
    }
    
    
}
