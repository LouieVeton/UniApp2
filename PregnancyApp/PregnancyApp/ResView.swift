//
//  ResView.swift
//  PregnancyApp
//
//  Created by Veton Jonuzi on 27/10/2022.
//  Copyright © 2022 Veton. All rights reserved.
//

import UIKit

class ResView: UIViewController {

  
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var textView2: UITextView!
    
    @IBOutlet weak var textView3: UITextView!
    
    @IBOutlet weak var textView4: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTextView()
        updateTextView2()
        updateTextView3()
        updateTextView4()

       }
    
    func updateTextView() {
        let path = "https://google.com"
        let text = textView.text ?? ""
        let attributedSting = NSAttributedString.makeHyperlink(for: path, in: text, as: "Beyond Blue")
        let font = textView.font
        let textColor = textView.textColor
        textView.attributedText = attributedSting
        textView.font = font
        textView.textColor = textColor
    }
    
    func updateTextView2() {
        let path = "https://google.com"
        let text = textView2.text ?? ""
        let attributedSting = NSAttributedString.makeHyperlink(for: path, in: text, as: "Nurse on Call")
        let font = textView2.font
        let textColor = textView2.textColor
        textView2.attributedText = attributedSting
        textView2.font = font
        textView2.textColor = textColor
    }
    
    func updateTextView3(){
        let path = "https://google.com"
        let text = textView3.text ?? ""
        let attributedSting = NSAttributedString.makeHyperlink(for: path, in: text, as: "Pregnancy, birth and baby hotline")
        let font = textView3.font
        let textColor = textView3.textColor
        textView3.attributedText = attributedSting
        textView3.font = font
        textView3.textColor = textColor
    }

    func updateTextView4(){
        let path = "https://google.com"
        let text = textView4.text ?? ""
        let attributedSting = NSAttributedString.makeHyperlink(for: path, in: text, as: "BabyCenter")
        let font = textView4.font
        let textColor = textView4.textColor
        textView4.attributedText = attributedSting
        textView4.font = font
        textView4.textColor = textColor
    }
}
