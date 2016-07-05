// Playground - noun: a place where people can play

import UIKit

// Setup the calendar object
let calendar = NSCalendar.currentCalendar()

// Set up date object
let date = NSDate()

// Create an NSDate for the first and last day of the month
//let components = calendar.components(NSCalendarUnit.CalendarUnitYear |
//                                     NSCalendarUnit.CalendarUnitMonth |
//                                     NSCalendarUnit.WeekdayCalendarUnit |
//                                     NSCalendarUnit.WeekCalendarUnit |
//                                     NSCalendarUnit.CalendarUnitDay,
//                                     fromDate: date)

// Create an NSDate for the first and last day of the month
let components = NSCalendar.currentCalendar().components(NSCalendarUnit.Month, fromDate: date)


components.month

// Getting the First and Last date of the month
components.day = 1
let firstDateOfMonth: NSDate = calendar.dateFromComponents(components)!

components.month  += 1
components.day     = 0
let lastDateOfMonth: NSDate = calendar.dateFromComponents(components)!

var unitFlags = NSCalendarUnit.Month |
    NSCalendarUnit.Weekday    |
    NSCalendarUnit.Day

let firstDateComponents = calendar.components(unitFlags, fromDate: firstDateOfMonth)
let lastDateComponents  = calendar.components(unitFlags, fromDate: lastDateOfMonth)

// Sun = 1, Sat = 7
let firstWeek = firstDateComponents.weekOfMonth
let lastWeek  = lastDateComponents.weekOfMonth

let numOfDatesToPrepend = firstDateComponents.weekday - 1
let numOfDatesToAppend  = 7 - lastDateComponents.weekday + (6 - lastDateComponents.weekOfMonth) * 7

let startDate: NSDate = calendar.dateByAddingUnit(NSCalendarUnit.CalendarUnitDay, value: -numOfDatesToPrepend, toDate: firstDateOfMonth, options: nil)!
let endDate:   NSDate = calendar.dateByAddingUnit(NSCalendarUnit.CalendarUnitDay, value: numOfDatesToAppend, toDate: lastDateOfMonth, options: nil)!

Array(map(0..<42) {
    calendar.dateByAddingUnit(NSCalendarUnit.CalendarUnitDay, value: $0, toDate: startDate, options: nil)!
    })

"\(components.year)"


var dateString = "2014-10-3" // change to your date format
var dateFormatter = NSDateFormatter()
dateFormatter.dateFormat = "YYYY-MM-dd"

var someDate = dateFormatter.dateFromString(dateString)
print(someDate)