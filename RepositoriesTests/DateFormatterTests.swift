//
//  DateFormatterTests.swift
//  RepositoriesTests
//
//  Created by Ahmad Ismail on 30/10/2021.
//

import XCTest
@testable import Repositories

class DateFormatterTests: XCTestCase {
    
    func testRegularFormat() {
        let date = Date(timeIntervalSince1970: 0)
        let formattedString = date.uiFormat()
        let targetedFormat = "Thursday, Jan 01, 1970"
        XCTAssertEqual(formattedString, targetedFormat)
    }

    func testRelativeFormat() {
        let date = Date() - 24 * 60 * 60
        let formattedString = date.uiFormat()
        let targetedFormat = "1 day ago"
        XCTAssertEqual(formattedString, targetedFormat)
    }

}
