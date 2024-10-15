//
//  Storyboard-Ext.swift
//  TestAssignment
//
//  Created by Muhammad Irfan Zafar on 15/10/2024.
//

import UIKit
import Foundation

enum Storyboard: String {
    case main                 = "Main"
    case splash               = "Splash"
    case home                 = "Home"
}

protocol Storyboardable: AnyObject {
    static func instansiateFromStoryboard(name storyboard: Storyboard) -> Self
}

extension Storyboardable where Self: UIViewController {
    static func instansiateFromStoryboard(name storyboard: Storyboard) -> Self {
        let storyboard = UIStoryboard(name: storyboard.rawValue, bundle: Bundle.main)
        let id = String(describing: self)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
