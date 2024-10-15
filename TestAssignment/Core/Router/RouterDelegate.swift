//
//  RouterDelegate.swift
//  TestAssignment
//
//  Created by Muhammad Irfan Zafar on 15/10/2024.
//
import UIKit

protocol RouterDelegate: AnyObject {
    
    func create(viewController: ViewControllerType) -> UIViewController
}
