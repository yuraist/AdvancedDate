//
//  DateExtension.swift
//  
//
//  Created by Yura Istomin on 11.06.2020.
//

import Foundation

public extension Date {
  
  var year: Int {
    Calendar.current.component(.year, from: self)
  }
  
  var month: Int {
    Calendar.current.component(.month, from: self)
  }
  
  var weekOfMonth: Int {
    Calendar.current.component(.weekOfMonth, from: self)
  }
  
  var weekOfYear: Int {
    Calendar.current.component(.weekOfYear, from: self)
  }
  
  var weekday: Int {
    Calendar.current.component(.weekday, from: self)
  }
  
  var day: Int {
    Calendar.current.component(.day, from: self)
  }
  
  var hour: Int {
    Calendar.current.component(.hour, from: self)
  }
  
  var minute: Int {
    Calendar.current.component(.minute, from: self)
  }
  
  var second: Int {
    Calendar.current.component(.second, from: self)
  }
  
  var previousDay: Date {
    Calendar.current.date(byAdding: .day, value: -1, to: self)!
  }
  
  var nextDay: Date {
    Calendar.current.date(byAdding: .day, value: 1, to: self)!
  }
  
  var previousWeek: Date {
    Calendar.current.date(byAdding: .day, value: -7, to: self)!
  }
  
  var nextWeek: Date {
    Calendar.current.date(byAdding: .day, value: 7, to: self)!
  }
  
  var previousMonth: Date {
    Calendar.current.date(byAdding: .month, value: -1, to: self)!
  }
  
  var nextMonth: Date {
    Calendar.current.date(byAdding: .month, value: 1, to: self)!
  }
  
  var startOfDay: Date {
    Calendar.current.startOfDay(for: self)
  }
  
  var endOfDay: Date {
    Calendar.current.date(byAdding: .day, value: 1, to: startOfDay)!
  }
  
  var startOfMonth: Date {
    let calendar = Calendar.current
    let firstDayOfMonthDateComponents = calendar.dateComponents([.month, .year], from: self)
    return calendar.date(from: firstDayOfMonthDateComponents)!.startOfDay
  }
  
  /// Returns time 23:59:59 of the last day of month
  var endOfMonth: Date {
    let calendar = Calendar.current
    let firstDayOfNextMonth = calendar.date(byAdding: .month, value: 1, to: startOfMonth)!
    return calendar.date(byAdding: .second, value: -1, to: firstDayOfNextMonth)!
  }
  
  var startOfYear: Date {
    let calendar = Calendar.current
    let firstDayOfYearDateComponents = calendar.dateComponents([.year], from: self)
    return calendar.date(from: firstDayOfYearDateComponents)!
  }
  
  // Returns time 23:59:59 of the last day of year
  var endOfYear: Date {
    let calendar = Calendar.current
    let endOfYearDate = calendar.date(byAdding: .year, value: 1, to: startOfYear)!
    return calendar.date(byAdding: .second, value: -1, to: endOfYearDate)!
  }
  
  var zeroSeconds: Date {
    let calendar = Calendar.current
    let dateComponents = calendar.dateComponents([.year, .month, .day, .hour, .minute], from: self)
    return calendar.date(from: dateComponents)!
  }
}

extension Int {
  
  /// Returns formatted localized string with number of days
  var daysLocalized: String {
    localizedPeriod(dateUnit: .day, number: self)
  }
  
  /// Returns formatted localized string with number of weeks
  var weeksLocalized: String {
    localizedPeriod(dateUnit: .weekOfMonth, number: self)
  }
  
  /// Returns formatted localized string with number of months
  var monthsLocalized: String {
    localizedPeriod(dateUnit: .month, number: self)
  }
  
  /// Returns formatted localized string with number of years
  var yearsLocalized: String {
    localizedPeriod(dateUnit: .year, number: self)
  }
  
  private func localizedPeriod(dateUnit: NSCalendar.Unit, number: Int) -> String {
    let calendar = Calendar.current
    let formatter = DateComponentsFormatter()
    formatter.calendar = calendar
    formatter.unitsStyle = .full
    formatter.allowedUnits = [dateUnit]
    
    var dateComponents = DateComponents()
    
    switch dateUnit {
    case .day:
      dateComponents.day = number
      
    case .weekOfMonth, .weekOfYear:
      dateComponents.weekOfMonth = number
      
    case .month:
      dateComponents.month = number
      
    case .year:
      dateComponents.year = number
      
    default:
      break
    }
    
    return formatter.string(from: dateComponents) ?? ""
  }
  
}
