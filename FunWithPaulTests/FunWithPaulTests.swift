//
//  FunWithPaulTests.swift
//  FunWithPaulTests
//
//  Created by Wesley Matlock on 9/13/22.
//

import XCTest
@testable import FunWithPaul

final class FunWithPaulTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func test3ForDollar() throws {

        let beans = Price(amount: 3, total: 1)
        XCTAssertEqual(beans.pricePerUnit, 0.33)

    }
}


class Price {
    var amount: Float
    var total: Float

    init(amount: Int, total: Int) {
        self.amount = Float(amount)
        self.total = Float(total)
    }

    var pricePerUnit: Float {
        return round(total/amount  * 100) / 100.0
    }
}
