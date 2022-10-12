//
//  ViewController.swift
//  Checkbox
//
//  Created by Kent on 8/5/18.
//  Copyright © 2018 Kent Hinson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var todaysDate: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let date = Date()
        
        let formatter = DateFormatter()
        formatter.timeZone = .current
        formatter.locale = .current
        formatter.dateFormat = "EEEE, d MMMM"
        
        todaysDate.text = formatter.string(from: date)
        todaysDate.numberOfLines = 0
        todaysDate.sizeToFit()
        todaysDate.adjustsFontSizeToFitWidth = true
        todaysDate.minimumScaleFactor = 0.5
        
        
        
        
    }
}

