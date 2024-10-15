//
//  FactoryDelegate.swift
//  TestAssignment
//
//  Created by Muhammad Irfan Zafar on 15/10/2024.
//

import UIKit

class Factory {
    private weak var router: Routerable!
    
    init(router: Routerable) {
        self.router = router
    }
}

extension Factory: FactoryDelegate {
    func create(viewController: ViewControllerType) -> UIViewController {
        switch viewController {
        case .root:
            let vc = RootViewController.instansiateFromStoryboard(name: .main)
            vc.vm = RootViewModel(router: router)
            return vc
        case .appload:
            let vc = AppLoadingViewController.instansiateFromStoryboard(name: .splash)
            vc.vm = AppLoadingViewModel(router: router)
            return vc
        case .home:
            let vc = HomeViewController.instansiateFromStoryboard(name: .home)
            vc.vm = HomeViewModel(router: router)
            return vc
        }
    }
}
