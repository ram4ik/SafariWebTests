//
//  SafariWebTestsUITests.swift
//  SafariWebTestsUITests
//
//  Created by Ramill Ibragimov on 09.06.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import XCTest

class SafariWebTestsUITests: XCTestCase {
    
    let safari = XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")
    
    override func setUp() {
        safari.launch()
    }
    
    override func tearDown() {
        safari.terminate()
    }

    func testExample() throws {
        
        let app = XCUIApplication()
        
        _ = safari.wait(for: .runningForeground, timeout: 30)
        
        safari.buttons["URL"].tap()
        
        safari.typeText("www.leon.ru")
        safari.keyboards.buttons["Go"].tap()
        
        _ = app.wait(for: .runningForeground, timeout: 5)
                
        XCTAssert(safari.otherElements["WebView"].webViews.staticTexts["Букмекерская контора Леон - ставки на спорт онлайн"].exists)
    
        _ = app.wait(for: .runningForeground, timeout: 5)
        
    }
}
