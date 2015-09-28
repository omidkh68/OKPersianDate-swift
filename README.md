# OKPersianDate-swift
<img src="https://raw.github.com/omidkh68/OKPersianDate-swift/master/OKPersianDate-swift/OKPersianDate.png" width="400px"/>


How its work :

    let date = NSDate()
    let calender = NSCalendar(calendarIdentifier: NSCalendarIdentifierPersian)
    let components = calender?.components(NSCalendarUnit(UInt.max), fromDate: date)
    
    let year =  components!.year
    let month = components!.month
    let day = components!.day
    
    txtDate.text = "\(year)/\(month)/\(day)"
