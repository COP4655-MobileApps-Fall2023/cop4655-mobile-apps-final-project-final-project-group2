//
//  EventEditViewController.swift
//  FitnessApp
//
//  Created by Anton on 12/4/23.
//

import Foundation
import UIKit

class EventEditViewController: UIViewController{
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var nameTF: UITextField!
    
    //var selectedDate: Date!
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.timeZone = TimeZone.init(identifier: "EST")
        selectedDate = datePicker.date
        //datePicker.date = selectedDate
    }
    
    @IBAction func datePickerValueChanged(_ sender: Any) {
        selectedDate = (sender as AnyObject).date
    }
    
    @IBAction func saveAction(_ sender: Any) {
        let newEvent = Event()
        newEvent.id = eventsList.count
        newEvent.name = nameTF.text
        newEvent.date = selectedDate
        
        
        eventsList.append(newEvent)
        navigationController!.popViewController(animated: true)
        print("PRINTING HERE: " + (newEvent.date).description)
    }
}
