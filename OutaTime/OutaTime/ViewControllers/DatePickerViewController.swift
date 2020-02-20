//
//  DatePickerViewController.swift
//  OutaTime
//
//  Created by Waseem Idelbi on 2/18/20.
//  Copyright © 2020 Waseem Idelbi. All rights reserved.
//

import UIKit

protocol DatePickerDelegate {
    func destinationDateWasChosen(date: Date)
}

class DatePickerViewController: UIViewController {

//MARK: - outlets and actions -
    @IBOutlet var datePickerOutlet: UIDatePicker!
    @IBAction func doneButtonTapped(_ sender: UIBarButtonItem) {
        delegate?.destinationDateWasChosen(date: datePickerOutlet.date)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelButtonTapped(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    //MARK:--
    var delegate: DatePickerDelegate?
    
    
}
