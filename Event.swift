//
//  Event.swift
//  InV
//
//  Created by David Park on 7/25/16.
//  Copyright © 2016 David Park. All rights reserved.
//

import Foundation

class Event{
    
    var username: String!
    var sport: String!
    //var location: Location!
    var location: Location!
    var numPplAttending: Int!
    var usersAttending: [User]? //change this optional
    var attendance: Bool!
    var time: String? //change this optional
    var date: String!
    
    var description: String?
    var comments: [String]?
    var skillLevel: String?
    
    /*init(user: User, sport: String, location: String, time: String, date: String, skillLevel: Int?, description: String?){
        self.username = user.username;
        self.sport = sport;
        self.location.locationName = location;
        self.attendance = true;
        self.numPplAttending = 1;
        self.usersAttending!.append(user);
        self.time = time;
        self.date = date;
        self.skillLevel = skillLevel;
        self.description = description;
    }*/
    
    /*init(user: String, sport: String, location: String, time: String?, date: String, skillLevel: String?, description: String?){
        self.username = user;
        self.sport = sport;
        //self.location.locationName = location;
        self.location = location
        self.attendance = true;
        self.numPplAttending = 1;
        //self.usersAttending.append(user);
        self.time = time;
        self.date = date;
        self.skillLevel = skillLevel;
        self.description = description;
    }*/
    
    init(){
        self.username = ""
        self.sport = ""
        self.location = Location()
        self.attendance = true;
        self.numPplAttending = 1;
        self.time = ""
        self.date = ""
        self.skillLevel = ""
        self.description = ""
    }
    
}