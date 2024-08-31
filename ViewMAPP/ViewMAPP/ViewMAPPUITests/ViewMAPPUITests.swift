//
//  ViewMAPPUITests.swift
//  ViewMAPPUITests
//
//  Created by Raul Galindo Hernandez on 29/08/24.
//

import XCTest

final class ViewMAPPUITests: XCTestCase {

    var app = XCUIApplication()
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        app.launch()
        let fetchDataButton = app.buttons["Fetch data from API"]
        XCTAssertTrue(fetchDataButton.exists)
        fetchDataButton.tap()
    }
    
    func testContentView() {
        let appTitleText = app.staticTexts["App Location"]
        XCTAssertTrue(appTitleText.exists)
    }
    
    func testNavigationToMapView() {
        let navigateToMapView = app.buttons["Location in Map View"]
        XCTAssertTrue(navigateToMapView.exists)
        navigateToMapView.tap()
        
        let viewMapTitle = app.staticTexts["Location in Map View"]
        XCTAssertTrue(viewMapTitle.waitForExistence(timeout: 5))
    }
    
    func testNavigationToDataStoredView() {
        let navigateToDataStoredView = app.buttons["Registers"]
        XCTAssertTrue(navigateToDataStoredView.exists)
        navigateToDataStoredView.tap()
        
        let viewDataStoredTitle = app.staticTexts["Registers"]
        XCTAssertTrue(viewDataStoredTitle.waitForExistence(timeout: 5))
    }
    

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
    }

    @MainActor
    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    @MainActor
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
