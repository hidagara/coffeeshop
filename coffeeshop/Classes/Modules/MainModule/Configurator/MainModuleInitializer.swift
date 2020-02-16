//
//  MainModuleMainModuleInitializer.swift
//  coffeeshop-ios
//
//  Created by hidagara on 16/02/2020.
//  Copyright © 2020 Company. All rights reserved.
//

import UIKit

class MainModuleModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var mainmoduleViewController: MainModuleViewController!

    override func awakeFromNib() {

        let configurator = MainModuleModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: mainmoduleViewController)
    }

}