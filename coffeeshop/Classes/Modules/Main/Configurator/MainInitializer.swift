//
//  MainMainInitializer.swift
//  coffeeshop-ios
//
//  Created by hidagara on 16/02/2020.
//  Copyright © 2020 Company. All rights reserved.
//

import UIKit

class MainModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var mainViewController: MainViewController!

    override func awakeFromNib() {

        let configurator = MainModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: mainViewController)
    }

}