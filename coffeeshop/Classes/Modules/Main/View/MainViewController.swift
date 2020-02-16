//
//  MainMainViewController.swift
//  coffeeshop-ios
//
//  Created by hidagara on 16/02/2020.
//  Copyright © 2020 Company. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, MainViewInput {

    var output: MainViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: MainViewInput
    func setupInitialState() {
    }
}