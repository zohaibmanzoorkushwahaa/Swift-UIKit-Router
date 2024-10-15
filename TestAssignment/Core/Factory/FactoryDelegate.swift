//
//  Assemblable.swift
//  TestAssignment
//
//  Created by Muhammad Irfan Zafar on 15/10/2024.
//

import UIKit

protocol FactoryDelegate: AnyObject {
    func create(viewController: ViewControllerType) -> UIViewController
}


struct FactoryElement {
    
}

//MARK: - ViewController
enum ViewControllerType {
    case root
}
