//
//  Router.swift
//  TestAssignment
//
//  Created by Muhammad Irfan Zafar on 15/10/2024.
//
import UIKit

class Router {
    private var window: UIWindow!
    private weak var delegate: RouterDelegate!
    private var navigation: UINavigationController!
    
    init(delegate: RouterDelegate) {
        self.delegate = delegate
    }
}


//MARK: - Routerable
extension Router: Routerable {
    func navigate(path: RouterPath) {
        switch path {
        case .setRoot(let type):
            let vc = delegate.create(viewController: type)
            navigation = UINavigationController(rootViewController: vc)
            window.rootViewController = navigation
        case .push(let type):
            let vc = delegate.create(viewController: type)
            navigation.pushViewController(vc, animated: true)
        }
    }
}

extension Router: CoreRoutable {
    func renderRootController(scene: UIWindowScene) {
        self.window = UIWindow(windowScene: scene)
        self.window.rootViewController = delegate.create(viewController: .appload)
        self.window.makeKeyAndVisible()
    }
}
