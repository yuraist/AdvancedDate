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
  
  func testEndOfMonthDate() {
    let calendar = Calendar.current
    
    var lastDayOfMonthDateComponents = DateComponents()
    lastDayOfMonthDateComponents.day = 31
    lastDayOfMonthDateComponents.month = 10
    lastDayOfMonthDateComponents.year = 2019
    lastDayOfMonthDateComponents.hour = 23
    lastDayOfMonthDateComponents.minute = 59
    lastDayOfMonthDateComponents.second = 59
    
    let lastDayOfMonthDate = calendar.date(from: lastDayOfMonthDateComponents)!
    
    var endOfMonthDateComponents = DateComponents()
    endOfMonthDateComponents.day = 31
    endOfMonthDateComponents.month = 10
    endOfMonthDateComponents.year = 2019
    
    let endOfMonthDate = calendar.date(from: endOfMonthDateComponents)!
    
    XCTAssertTrue(lastDayOfMonthDate == endOfMonthDate.endOfMonth)
  }
  
  func testStartOfYearDate() {
    let calendar = Calendar.current
    
    var startOfYearDateComponents = DateComponents()
    startOfYearDateComponents.day = 1
    startOfYearDateComponents.month = 1
    startOfYearDateComponents.year = 2019
    
    let startOfYearDate = calendar.date(from: startOfYearDateComponents)!
    
    XCTAssertTrue(startOfYearDate == startOfYearDate.startOfYear)
  }
  
  func testEndOfYearDate() {
    let calendar = Calendar.current
    
    var lastDayOfYearDateComponents = DateComponents()
    lastDayOfYearDateComponents.day = 31
    lastDayOfYearDateComponents.month = 12
    lastDayOfYearDateComponents.year = 2019
    lastDayOfYearDateComponents.hour = 23
    lastDayOfYearDateComponents.minute = 59
    lastDayOfYearDateComponents.second = 59
    
    let lastDayOfYearDate = calendar.date(from: lastDayOfYearDateComponents)!
    
    var randomDayOfYearDateComponents = DateComponents()
    randomDayOfYearDateComponents.day = 15
    randomDayOfYearDateComponents.month = 8
    randomDayOfYearDateComponents.year = 2019
    
    let testingEndOfYearDate = calendar.date(from: randomDayOfYearDateComponents)!.endOfYear
    
    XCTAssertTrue(lastDayOfYearDate == testingEndOfYearDate)
  }
  
  static var allTests = [
    ("testExample", testExample),
  ]
}
