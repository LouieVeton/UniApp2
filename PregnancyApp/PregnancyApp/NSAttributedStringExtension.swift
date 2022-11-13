//
//  NSAttributedStringExtension.swift
//  PregnancyApp
//
//  Created by Veton Jonuzi on 2/11/2022.
//  Copyright © 2022 Veton. All rights reserved.
//

import Foundation


extension NSAttributedString{
    
    static func makeHyperlink(for path: String, in string: String, as substring: String) -> NSAttributedString{
        let nsString = NSString(string: string)
        let substringRange = nsString.range(of:substring)
        let attributedString = NSMutableAttributedString(string: string)
        attributedString.addAttribute(.link, value: path, range: substringRange)
        return attributedString
    }
    
}
