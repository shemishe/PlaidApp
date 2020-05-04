//
//  MainViewController.swift
//  PlaidApp
//
//  Created by Sherman Shi on 5/4/20.
//  Copyright © 2020 Sherman Shi. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Properties
    
    var mainView: MainView { return self.view as! MainView }
    
    // MARK: - Initializiers
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        self.view = MainView(frame: UIScreen.main.bounds)
    }
    
    // MARK: - Helper Functions
    
    
}
