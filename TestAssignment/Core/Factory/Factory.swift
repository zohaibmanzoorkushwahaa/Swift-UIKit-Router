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
            return RootViewController()
        case .appload: 
            return AppLoadingViewController(router: router)
        }
    }
}
