import XCTest
@testable import Assets_xcassets

final class Assets_xcassetsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Assets_xcassets().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
