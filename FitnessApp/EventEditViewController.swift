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
        datePicker.date = selectedDate
    }
    
    @IBAction func saveAction(_ sender: Any) {
        let newEvent = Event()
        newEvent.id = eventsList.count
        newEvent.name = nameTF.text
        newEvent.date = datePicker.date
        
        eventsList.append(newEvent)
        navigationController!.popViewController(animated: true)
    }
}
