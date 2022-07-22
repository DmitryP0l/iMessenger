//
//  MainTabBarController.swift
//  iMessenger
//
//  Created by Dmitry P on 22.07.22.
//

import UIKit

final class MainTabBarController: UITabBarController {
    
    private let listViewController = ListViewController()
    private let peopleViewController = PeopleViewController()
    private let boldConfiguration = UIImage.SymbolConfiguration(weight: .bold)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    private func generateNavigationController(rootVC: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootVC)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        
        return navigationVC
    }
    
    private func setupTabBar() {
        tabBar.tintColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        let peopleImage = UIImage(systemName: "person.2", withConfiguration: boldConfiguration)!
        let conversationsImage = UIImage(systemName: "bubble.left.and.bubble.right", withConfiguration: boldConfiguration)!
        
        viewControllers = [
            generateNavigationController(rootVC: listViewController, title: "Conversations", image: conversationsImage),
            generateNavigationController(rootVC: peopleViewController, title: "People", image: peopleImage)
        ]
    }
}
