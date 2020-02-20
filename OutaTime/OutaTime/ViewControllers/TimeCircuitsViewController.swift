//
//  ViewController.swift
//  OutaTime
//
//  Created by Waseem Idelbi on 2/18/20.
//  Copyright © 2020 Waseem Idelbi. All rights reserved.
//

import UIKit

class TimeCircuitsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    
    //MARK:-outlets and actions-
    @IBOutlet var destinationTimeLabel: UILabel!
    @IBOutlet var presentTimeLabel: UILabel!
    @IBOutlet var lastTimeDepartedLabel: UILabel!
    @IBOutlet var speedLabel: UILabel!
    
    @IBAction func travelBackButtonTapped(_ sender: UIButton) {
        
    }
    //MARK:-Date Formatter-
    let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM, dd yyyy"
        
        return dateFormatter
    }()
    //MARK: --
    var speed = 0
    
    func updateViews() {
        presentTimeLabel.text = dateFormatter.string(from: Date())
        speedLabel.text = "\(speed) MPH"
        lastTimeDepartedLabel.text = "--- -- ----"
    }
    //MARK:-Prepare For Segue Method-
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let DPVC = segue.destination as? DatePickerViewController else {return}
        DPVC.delegate = self
        
        if segue.identifier == "SetDestinationTimeSegue" {
            
        } else if segue.identifier == "TravelBackSegue" {
            
        }
    }
    
    
}

//MARK: -extensions-
extension TimeCircuitsViewController: DatePickerDelegate {
    func destinationDateWasChosen(date: Date) {
        destinationTimeLabel.text = dateFormatter.string(from: date)
    }
    
    
}
