//
//  MainModuleMainModuleConfigurator.swift
//  coffeeshop-ios
//
//  Created by hidagara on 16/02/2020.
//  Copyright © 2020 Company. All rights reserved.
//

import UIKit

class MainModuleModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? MainModuleViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: MainModuleViewController) {

        let router = MainModuleRouter()

        let presenter = MainModulePresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = MainModuleInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}