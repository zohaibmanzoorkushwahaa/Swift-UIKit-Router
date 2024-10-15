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
    
    init(delegate: RouterDelegate) {
        self.delegate = delegate
    }
}


//MARK: - Routerable
extension Router: Routerable {
    func renderRootController(scene: UIWindowScene) {
        self.window = UIWindow(windowScene: scene)
        self.window.rootViewController = delegate.create(viewController: .appload)
        self.window.makeKeyAndVisible()
    }
    
//    func route(to)
}
