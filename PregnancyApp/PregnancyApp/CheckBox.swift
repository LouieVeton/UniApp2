//
//  CheckBox.swift
//  checkbox
//
//  Created by kent on 9/27/14.
//  Copyright (c) 2014 kent. All rights reserved.
//
//Version 2.0 new features
//Added IBInspectable property so the checkbox can be turned on and off in interface builder.


import UIKit

class CheckBox: UIButton {
    
    //images
    let checkedImage = UIImage(named: "checkedd_checkbox")
    let unCheckedImage = UIImage(named: "uncheckedd_checkbox")
    
    //bool propety
    @IBInspectable var isChecked:Bool = false{
        didSet{
            self.updateImage()
        }
    }

    
    override func awakeFromNib() {
       self.addTarget(self, action: #selector(CheckBox.buttonClicked), for: UIControl.Event.touchUpInside)
       self.imageView?.contentMode = .scaleAspectFit
       self.imageEdgeInsets = UIEdgeInsets(top: 5.0, left: 0.0, bottom: 5.0, right: 50.0)
       self.updateImage()
    }
    
    
    func updateImage() {
        if isChecked == true{
            self.setImage(checkedImage, for: [])
        }else{
            self.setImage(unCheckedImage, for: [])
        }

    }

    @objc func buttonClicked(sender:UIButton) {
        if(sender == self){
            isChecked = !isChecked
            UserDefaults.standard.set(isChecked, forKey: "btnclicked")
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let getCheckStatus = UserDefaults.standard.bool(forKey: "btnclicked")
         self.isChecked = getCheckStatus
         updateImage()
      }

}
