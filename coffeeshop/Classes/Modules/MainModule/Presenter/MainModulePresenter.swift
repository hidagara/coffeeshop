//
//  MainModuleMainModulePresenter.swift
//  coffeeshop-ios
//
//  Created by hidagara on 16/02/2020.
//  Copyright © 2020 Company. All rights reserved.
//

class MainModulePresenter: MainModuleModuleInput, MainModuleViewOutput, MainModuleInteractorOutput {

    weak var view: MainModuleViewInput!
    var interactor: MainModuleInteractorInput!
    var router: MainModuleRouterInput!

    func viewIsReady() {

    }
}