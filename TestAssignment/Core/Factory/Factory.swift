//
//  FactoryDelegate.swift
//  TestAssignment
//
//  Created by Muhammad Irfan Zafar on 15/10/2024.
//

import UIKit

class Factory {
    
}

extension Factory: FactoryDelegate {
    func create(viewController: ViewControllerType) -> UIViewController {
        switch viewController {
        case .root:
            return RootViewController()
        }
    }
}
