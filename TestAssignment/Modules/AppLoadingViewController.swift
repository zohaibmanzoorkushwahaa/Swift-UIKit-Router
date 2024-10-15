//
//  AppLoadingViewController.swift
//  TestAssignment
//
//  Created by Muhammad Irfan Zafar on 15/10/2024.
//

import UIKit

class AppLoadingViewController: UIViewController {
    
    private weak var router: Routerable!
    
    init(router: Routerable) {
        super.init(nibName: nil, bundle: nil)
        self.router = router
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
    
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
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
            debugPrint(self.router)
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
