//
//  DatePickerViewController.swift
//  MAPD714 Pickers
//
//  Created by Student on 2017-10-11.
//  Copyright © 2017 Centennial College. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let date = NSDate()
        datePicker.setDate(date as Date, animated: false)

        
    }

    @IBAction func onButtonPressed(_ sender: UIButton) {
        let date = datePicker.date
        print(date)
        let message = "The Date and Time you selected is \(date)"
        
        let alert = UIAlertController(
            title: "Date and Time selected",
            message: message,
            preferredStyle: .alert)
        
        let action = UIAlertAction(
            title: "That's so True!",
            style: .default,
            handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
  
}
