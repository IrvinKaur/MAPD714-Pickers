//
//  ViewController.swift
//  CalC1
//
//  Created by Student on 2017-09-23.
//  Copyright © 2017 Centennial College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var numberOnScreen:Double = 0; //numbers displayed
    var performingMath = false;
    @IBOutlet weak var label: UILabel!


    @IBAction func numbers(_ sender: UIButton) {
    
        label.text = String(sender.tag-1)
        numberOnScreen = Double(label.text!)!
        performingMath = false
        
    }
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

