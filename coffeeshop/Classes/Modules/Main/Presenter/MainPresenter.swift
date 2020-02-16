//
//  MainMainPresenter.swift
//  coffeeshop-ios
//
//  Created by hidagara on 16/02/2020.
//  Copyright © 2020 Company. All rights reserved.
//

class MainPresenter: MainModuleInput, MainViewOutput, MainInteractorOutput {

    weak var view: MainViewInput!
    var interactor: MainInteractorInput!
    var router: MainRouterInput!

    func viewIsReady() {

    }
}