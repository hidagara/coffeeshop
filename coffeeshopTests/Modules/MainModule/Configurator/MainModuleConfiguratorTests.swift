//
//  MainModuleMainModuleConfiguratorTests.swift
//  coffeeshop-ios
//
//  Created by hidagara on 16/02/2020.
//  Copyright © 2020 Company. All rights reserved.
//

import XCTest

class MainModuleModuleConfiguratorTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testConfigureModuleForViewController() {

        //given
        let viewController = MainModuleViewControllerMock()
        let configurator = MainModuleModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "MainModuleViewController is nil after configuration")
        XCTAssertTrue(viewController.output is MainModulePresenter, "output is not MainModulePresenter")

        let presenter: MainModulePresenter = viewController.output as! MainModulePresenter
        XCTAssertNotNil(presenter.view, "view in MainModulePresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in MainModulePresenter is nil after configuration")
        XCTAssertTrue(presenter.router is MainModuleRouter, "router is not MainModuleRouter")

        let interactor: MainModuleInteractor = presenter.interactor as! MainModuleInteractor
        XCTAssertNotNil(interactor.output, "output in MainModuleInteractor is nil after configuration")
    }

    class MainModuleViewControllerMock: MainModuleViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
