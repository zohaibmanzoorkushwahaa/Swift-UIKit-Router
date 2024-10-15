//
//  Routerable.swift
//  TestAssignment
//
//  Created by Muhammad Irfan Zafar on 15/10/2024.
//

import UIKit

protocol Routerable: AnyObject {
    func navigate(path: RouterPath)
}

protocol CoreRoutable: Routerable {
    func renderRootController(scene: UIWindowScene)
}

/// navigate(path: .push(type: ViewController))

enum RouterPath {
    case setRoot(type: ViewControllerType)
    case push(type: ViewControllerType)
}
