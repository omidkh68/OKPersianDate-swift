//
//  ViewController.swift
//  OKPersianDate-swift
//
//  Created by omid khosrojerdi on 7/7/1394 AP.
//  Copyright (c) 1394 omid khosrojerdi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtDate: UITextField!
    
    @IBOutlet weak var btnPrint: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        btnPrint.layer.cornerRadius = 5
    }
    @IBAction func printDate(sender: AnyObject)
    {
        let date = NSDate()
        let calender = NSCalendar(calendarIdentifier: NSCalendarIdentifierPersian)
        let components = calender?.components(NSCalendarUnit(UInt.max), fromDate: date)
        
        let year =  components!.year
        let month = components!.month
        let day = components!.day
        
        txtDate.text = "\(year)/\(month)/\(day)"
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

