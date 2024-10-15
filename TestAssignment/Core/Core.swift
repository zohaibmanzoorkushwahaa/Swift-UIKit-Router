//
//  Core.swift
//  TestAssignment
//
//  Created by Muhammad Irfan Zafar on 15/10/2024.
//

import UIKit


class Core {
    private var factory: Factory
    private var router: Routerable
    
    init() {
        self.factory = Factory()
        self.router = Router(factory: factory)
    }
    
    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        router.renderRootController(scene: windowScene)
    }
}
