//
//  MainMainPresenterTests.swift
//  coffeeshop-ios
//
//  Created by hidagara on 16/02/2020.
//  Copyright © 2020 Company. All rights reserved.
//

import XCTest

class MainPresenterTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    class MockInteractor: MainInteractorInput {

    }

    class MockRouter: MainRouterInput {

    }

    class MockViewController: MainViewInput {

        func setupInitialState() {

        }
    }
}
