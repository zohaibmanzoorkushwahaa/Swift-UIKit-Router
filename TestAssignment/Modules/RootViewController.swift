//
//  RootViewController.swift
//  TestAssignment
//
//  Created by Muhammad Irfan Zafar on 15/10/2024.
//

import UIKit

class RootViewModel {
    weak var router: Routerable!
    
    init(router: Routerable) {
        self.router = router
    }
}

class RootViewController: UIViewController, Storyboardable {

    
    var vm: RootViewModel?
    
    @IBAction func didHomeTapped(_ sender: UIButton) {
        vm?.router.navigate(path: .push(type: .home))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .red
    }

}
