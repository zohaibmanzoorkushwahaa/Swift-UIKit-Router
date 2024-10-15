//
//  Router.swift
//  TestAssignment
//
//  Created by Muhammad Irfan Zafar on 15/10/2024.
//
import UIKit

class Router {
    private var window: UIWindow!
    private weak var factory: FactoryDelegate!
    
    init(factory: FactoryDelegate) {
        self.factory = factory
    }
}


//MARK: - Routerable
extension Router: Routerable {
    func renderRootController(scene: UIWindowScene) {
        self.window = UIWindow(windowScene: scene)
        self.window.rootViewController = factory.create(viewController: .root)
        self.window.makeKeyAndVisible()
    }
}
