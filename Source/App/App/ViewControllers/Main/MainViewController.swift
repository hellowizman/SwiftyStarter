//
//  MainViewController.swift
//  App
//
//  Created by Visuality on 30.03.2020.
//  Copyright © 2020 Igor Matyushkin. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupNavigationBar()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    private func setupNavigationBar() {
        self.navigationItem.title = "Main Screen"
        self.navigationItem.largeTitleDisplayMode = .always
    }
}
