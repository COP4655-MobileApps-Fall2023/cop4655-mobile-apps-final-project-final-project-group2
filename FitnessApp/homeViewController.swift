//
//  homeViewController.swift
//  FitnessApp
//
//  Created by Anton on 12/6/23.
//

import Foundation
import UIKit

class homeViewController: UIViewController {

    
    @IBOutlet weak var welcomeText: UILabel!
    
    //@IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var reminders: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeText.text = "Hello "+(User.current!.username ?? "User")
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "MM / dd / yyyy"
        
        let currentDate = Date()
        let formattedDate = dateFormatter.string(from: currentDate)
        
        dateLabel.text = formattedDate
        
        reminders.text = "Reminders\nDrink a minimum of 125 oz of water\nEat around 2000 calories\nTry to do an hour of physical activity"
    }
    
}

