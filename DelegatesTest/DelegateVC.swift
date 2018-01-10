//
//  DelegateVC.swift
//  DelegatesTest
//
//  Created by Alessio Arduini on 09/01/18.
//  Copyright © 2018 Alessio Arduini. All rights reserved.
//

import Foundation
import UIKit


protocol DelegateVCDelegate {
    func setBackgroundColor() -> UIColor
}


class DelegateVC : UIViewController, DelegateVCDelegate {
    
    func setBackgroundColor() -> UIColor {
        return UIColor.blue
    }
    
    
    var delegate : DelegateVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =         delegate?.setBackgroundColor()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}

