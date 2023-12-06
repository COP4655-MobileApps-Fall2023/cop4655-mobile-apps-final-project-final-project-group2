//
//  Event.swift
//  FitnessApp
//
//  Created by Anton on 12/4/23.
//

import Foundation

//var eventsList = [Event]()

class Event{
    var id: Int!
    var name: String!
    var date: Date!
    
    func eventsForDate(date: Date) -> [Event] {
        
        var daysEvents = [Event]()
        print(eventsList)
        for event in eventsList
        {
            let dateValue = Calendar.current.dateComponents([.year,.month,.day], from: date)
            print("DATE VALUE: " + dateValue.description)
            let eventDateValue = Calendar.current.dateComponents([.year,.month,.day], from: event.date)
            if(eventDateValue.year == dateValue.year && eventDateValue.month == dateValue.month && eventDateValue.day == dateValue.day)
            {
                //daysEvents.append(event)
               // if(Calendar.current.isDate(event.date, inSameDayAs: date)){
                    daysEvents.append(event)
               // }
            }
            print("PRINTING DATE " + date.description)

        }
        return daysEvents
    }
}
