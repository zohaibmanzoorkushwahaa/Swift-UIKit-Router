//
//  Core.swift
//  TestAssignment
//
//  Created by Muhammad Irfan Zafar on 15/10/2024.
//

import UIKit

protocol CoreDelegate: AnyObject {
    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions)
}


class Core {
    private var factory: Factory!
    private var router: CoreRoutable!
    
    init() {
        self.router = Router(delegate: self)
        self.factory = Factory(router: self.router)
    }
}


//MARK: - CoreDelegate
extension Core: CoreDelegate {
    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        router.renderRootController(scene: windowScene)
    }
}

//MARK: - RouterDelegate
extension Core: RouterDelegate {
    func create(viewController: ViewControllerType) -> UIViewController {
        factory.create(viewController: viewController)
    }
}
