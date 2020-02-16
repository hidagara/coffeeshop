//
//  MainModuleMainModuleViewController.swift
//  coffeeshop-ios
//
//  Created by hidagara on 16/02/2020.
//  Copyright © 2020 Company. All rights reserved.
//

import UIKit

class MainModuleViewController: UIViewController, MainModuleViewInput {

    var output: MainModuleViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: MainModuleViewInput
    func setupInitialState() {
    }
}