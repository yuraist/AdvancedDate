import XCTest
@testable import AdvancedDate

final class AdvancedDateTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(AdvancedDate().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
