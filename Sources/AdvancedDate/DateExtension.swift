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
  
  var zeroSeconds: Date {
    let calendar = Calendar.current
    let dateComponents = calendar.dateComponents([.year, .month, .day, .hour, .minute], from: self)
    return calendar.date(from: dateComponents)!
  }
}
