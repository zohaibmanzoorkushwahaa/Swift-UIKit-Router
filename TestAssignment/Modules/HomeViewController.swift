//
//  HomeViewController.swift
//  TestAssignment
//
//  Created by Muhammad Irfan Zafar on 15/10/2024.
//

import UIKit


class HomeViewModel {
    weak var router: Routerable!
    
    init(router: Routerable) {
        self.router = router
    }
}

class HomeViewController: UIViewController, Storyboardable {

    var vm: HomeViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
