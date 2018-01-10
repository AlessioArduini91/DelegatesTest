//
//  DelegatorVC.swift
//  DelegatesTest
//
//  Created by Alessio Arduini on 09/01/18.
//  Copyright © 2018 Alessio Arduini. All rights reserved.
//

import Foundation
import UIKit

class DelegatorVC : UIViewController, DelegateVCDelegate {
    
    var bckColor : UIColor?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func BtnOnClick(_ sender: UIButton) {
        
            self.bckColor = sender.backgroundColor!
        
        performSegue(withIdentifier: "DelegateSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DelegateVC {
            destination.delegate = self
        }
    }
    
    func setBackgroundColor() -> UIColor {
       return self.bckColor!
    }
}
