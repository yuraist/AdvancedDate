import XCTest
@testable import AdvancedDate

final class AdvancedDateTests: XCTestCase {
  func testExample() {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct
    // results.
  }
  
  func testStartOfMonthDate() {
    let calendar = Calendar.current
    
    var firstDayOfMonthDateComponents = DateComponents()
    firstDayOfMonthDateComponents.day = 1
    firstDayOfMonthDateComponents.month = 10
    firstDayOfMonthDateComponents.year = 2019
    
    let firstDayOfMonthDate = calendar.date(from: firstDayOfMonthDateComponents)!
    
    XCTAssertTrue(firstDayOfMonthDate == firstDayOfMonthDate.startOfMonth)
  }
  
  static var allTests = [
    ("testExample", testExample),
  ]
}
