//
//  AppLoadingViewController.swift
//  TestAssignment
//
//  Created by Muhammad Irfan Zafar on 15/10/2024.
//

import UIKit

class AppLoadingViewModel {
    weak var router: Routerable!
    
    init(router: Routerable) {
        self.router = router
    }
}

class AppLoadingViewController: UIViewController, Storyboardable {
    
    var vm: AppLoadingViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

}

//MARK: - Private Methods
extension AppLoadingViewController {
    
    func setupUI() {
        self.view.backgroundColor = .white
        view.addSubview(createActivityIndicator())
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: { [weak self] in
            self?.vm?.router.navigate(path: .setRoot(type: .root))
        })
    }
    
    func createActivityIndicator() -> UIActivityIndicatorView {
        let activityIndicator = UIActivityIndicatorView()
        activityIndicator.center = view.center
        activityIndicator.style = .large
        activityIndicator.startAnimating()
        return activityIndicator
    }
}
