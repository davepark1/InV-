//
//  User.swift
//  InV
//
//  Created by David Park on 7/20/16.
//  Copyright © 2016 Thorn Technologies. All rights reserved.
//

import Foundation
import UIKit

class User{
    
    var username: String!
    var firstName: String!
    var lastName: String!
    var eventsAttending = [Event]()
    var eventCreator: [Event] = []
    
    init(username: String, firstName: String, lastName: String){
        self.username = username;
        self.firstName = firstName;
        self.lastName = lastName;
    }
    
    /*func createEvent(user: User, sport: String, location: String, time: String, date: String, skillLevel: Int?, description: String?){
        var event = Event(user: self, sport: sport, location: location, time: time, date: date, skillLevel: skillLevel, description: description)
        eventCreator.append(event)
    }*/
}